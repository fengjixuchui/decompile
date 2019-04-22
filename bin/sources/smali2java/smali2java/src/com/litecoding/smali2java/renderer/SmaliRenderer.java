package com.litecoding.smali2java.renderer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

import com.litecoding.smali2java.entity.smali.ClassRef;
import com.litecoding.smali2java.entity.smali.FieldRef;
import com.litecoding.smali2java.entity.smali.Instruction;
import com.litecoding.smali2java.entity.smali.Label;
import com.litecoding.smali2java.entity.smali.OpcodeData;
import com.litecoding.smali2java.entity.smali.Register;
import com.litecoding.smali2java.entity.smali.Register.RegisterInfo;
import com.litecoding.smali2java.entity.smali.RegisterGroup;
import com.litecoding.smali2java.entity.smali.SmaliCodeEntity;
import com.litecoding.smali2java.entity.smali.SmaliMethod;

import dalvik.bytecode.Opcodes;

import static com.litecoding.smali2java.Consts.*;

/**
 * This class converts smali entities to java entities
 * @author Dmitry Vorobiev
 *
 */
public class SmaliRenderer {
	public static class SmaliBlock {
		public static final AtomicInteger ID = new AtomicInteger();
		
		/**
		 * Id of this block
		 */
		public final int id;
		
		/**
		 * List of blocks that redirect execution flow to this block. 
		 */
		public final List<SmaliBlock> referencedBy = new LinkedList<SmaliBlock>();
		
		/**
		 * Timeline for method registers used in the current block
		 */
		public final RegisterTimeline registerTimeline = new RegisterTimeline();
				
		public boolean isRootBlock = false;
		
		/**
		 * Label associated with this block.
		 */
		public Label smaliLabel = null;
		
		public final List<Instruction> instructions = new LinkedList<Instruction>();
		
		/**
		 * Last instruction is if-*.
		 */
		public boolean isEndsByCondition = false;
		
		public Instruction condition = null;
		
		/**
		 * Last instruction is goto*.
		 */
		public boolean isEndsByGoto = false;
		
		/**
		 * Last instruction is return*
		 */
		public boolean isEndsByReturn = false;
		
		public Instruction returnInstruction = null;
		
		/**
		 * Link to next block in cases of true condition, goto or simple redirect.
		 */
		public SmaliBlock nextBlockIfTrue = null;
		
		/**
		 * Link to next block in case of false condition.
		 */
		public SmaliBlock nextBlockIfFalse = null;
		
		
		/*
		 * Internal variables
		 */
		
		/**
		 * Shows is block never used before
		 */
		public boolean internalIsEmpty = true;
		public Label internalNextLabelIfTrue = null;
		
		public SmaliBlock() {
			this.id = ID.incrementAndGet();
		}
		
		public boolean isPlain() {
			return isRootBlock && isEndsByReturn;
		}
		
		@Override
		public String toString() {
			StringBuilder builder = new StringBuilder();
			final String separator = "========================================\n";
			
			builder.append(separator);
			builder.append("id: ");
			builder.append(id);
			builder.append("\n");
			
			if(isRootBlock) {
				builder.append("This is the first block\n");
			} else {
				builder.append("referenced by: ");
				for(SmaliBlock block : referencedBy) {
					builder.append(block.id);
					builder.append(" ");
				}
				builder.append("\n");
			}
						
			if(smaliLabel != null) {
				builder.append("smali label: ");
				builder.append(smaliLabel.getName());
				builder.append("\n");
			}
			
			builder.append("instructions:\n");
			for(Instruction instruction : instructions) {
				builder.append("    ");
				builder.append(instruction.toString());
				builder.append("\n");
			}
			
			builder.append("register timeline: \n");
			for(List<RegisterInfo> info : registerTimeline.getTimeline()) {
				builder.append("    ");
				builder.append(info.toString());
				builder.append("\n");
			}
			
			if(isEndsByCondition) {
				builder.append("Ends by condition: ");
				builder.append(condition.toString());
				builder.append("\n");
			} else if(isEndsByGoto) {
				builder.append("Ends by goto\n");
			} else if(isEndsByReturn) {
				builder.append("Ends by return: ");
				builder.append(returnInstruction.toString());
				builder.append("\n");
			} else {
				builder.append("Ends by beginning of the next block\n");
			}
			
			if(nextBlockIfTrue != null) {
				builder.append("next block if true: ");
				builder.append(nextBlockIfTrue.id);
				builder.append("\n");
			}
			
			if(nextBlockIfFalse != null) {
				builder.append("next block if false: ");
				builder.append(nextBlockIfFalse.id);
				builder.append("\n");
			}
			
			return builder.toString();
		}
	}
	
	/**
	 * Produces list with blocks of code for the selected method. 
	 * Root block should be placed first.
	 * @param smaliMethod
	 * @return list with blocks of code
	 * @throws UnknownLabelException
	 */
	public static SmaliBlock generateBlocks(SmaliMethod smaliMethod) throws UnknownLabelException {
		Map<String, SmaliBlock> labeledBlocks = new HashMap<String, SmaliBlock>();
		List<SmaliBlock> allBlocks = new LinkedList<SmaliBlock>();
		
		//generate root block
		SmaliBlock rootBlock = new SmaliBlock();
		rootBlock.isRootBlock = true;
		
		SmaliBlock block = rootBlock;
		
		for(SmaliCodeEntity codeEntity : smaliMethod.getCommands()) {
			//label for outer breaking
			mainLoop:
		
			if(codeEntity instanceof Instruction) {
				Instruction instruction = (Instruction) codeEntity;
				switch(instruction.getOpcodeData().getType()) {
				case OpcodeData.TYPE_GOTO: {
					block.internalIsEmpty = false;
					block.isEndsByGoto = true;
					block.internalNextLabelIfTrue = (Label) instruction.getArguments().get(0);
					
					//register block in labeled & all
					if(block.smaliLabel != null)
						labeledBlocks.put(block.smaliLabel.getName(), block);
					allBlocks.add(block);
					
					block = new SmaliBlock();
					break mainLoop;
				}
				case OpcodeData.TYPE_CONDITION: {
					block.internalIsEmpty = false;
					block.isEndsByCondition = true;
					block.condition = instruction;
					block.internalNextLabelIfTrue = 
							(Label) instruction.getArguments().get(instruction.getArguments().size() - 1);
										
					//register block in labeled & all
					if(block.smaliLabel != null)
						labeledBlocks.put(block.smaliLabel.getName(), block);
					allBlocks.add(block);
					
					//now we should create a block that follows the current if condition is false
					SmaliBlock prevBlock = block;
					block = new SmaliBlock();
					prevBlock.nextBlockIfFalse = block;
					
					break mainLoop;
				}
				case OpcodeData.TYPE_RETURN: {
					block.internalIsEmpty = false;
					block.isEndsByReturn = true;
					block.returnInstruction = instruction;
					
					//register block in labeled & all
					if(block.smaliLabel != null)
						labeledBlocks.put(block.smaliLabel.getName(), block);
					allBlocks.add(block);
					
					block = new SmaliBlock();
					break mainLoop;
				}
				default: {
					block.internalIsEmpty = false;
					block.instructions.add(instruction);
					
					break mainLoop;
				}
				}
			} else if(codeEntity instanceof Label) {
				Label label = (Label) codeEntity;
				if(!block.internalIsEmpty) {
					//This means that end of current block is regular instruction 
					//(not a condition or goto)
					
					//finishing previous block & creating the next
					block.internalNextLabelIfTrue = label;
					
					//register block in labeled & all
					if(block.smaliLabel != null)
						labeledBlocks.put(block.smaliLabel.getName(), block);
					allBlocks.add(block);
					
					block = new SmaliBlock();
				}
				
				//here we have a brand-new block
				block.internalIsEmpty = false;
				block.smaliLabel = label;
				break mainLoop;
			}
		}
		
		//resolve labels
		for(SmaliBlock currBlock : allBlocks) {
			if(currBlock.internalNextLabelIfTrue != null) {
				String labelName = currBlock.internalNextLabelIfTrue.getName();
				if(!labeledBlocks.containsKey(labelName)) {
					throw new UnknownLabelException("Unknown label: " + labelName);
				}
				
				currBlock.nextBlockIfTrue = labeledBlocks.get(labelName);
			}
			
			if(currBlock.nextBlockIfTrue != null)
				currBlock.nextBlockIfTrue.referencedBy.add(currBlock);
			
			if(currBlock.nextBlockIfFalse != null)
				currBlock.nextBlockIfFalse.referencedBy.add(currBlock);
		}
		
		//build timeline
		buildTimeline(allBlocks, smaliMethod);
		
		allBlocks.clear();
		labeledBlocks.clear();
		return rootBlock;
	}
	
	/**
	 * Method for debugging. Prints to System.out block chain content and timeline
	 * @param rootBlock
	 */
	public static void printBlockChain(SmaliBlock rootBlock) {
		List<SmaliBlock> printed = new LinkedList<SmaliBlock>();
		List<SmaliBlock> scheduled = new LinkedList<SmaliBlock>();
		scheduled.add(rootBlock);
		
		while(!scheduled.isEmpty()) {
			SmaliBlock currBlock = scheduled.remove(0);
			if(!printed.contains(currBlock)) {
				System.out.println(currBlock);
				printed.add(currBlock);
			}
			
			if(currBlock.nextBlockIfTrue != null && !printed.contains(currBlock.nextBlockIfTrue))
				scheduled.add(currBlock.nextBlockIfTrue);
			
			if(currBlock.nextBlockIfFalse != null && !printed.contains(currBlock.nextBlockIfFalse))
				scheduled.add(currBlock.nextBlockIfFalse);
		}
	}
		
	/**
	 * Builds scheme of register usage (timeline) for each block of code
	 * @param block
	 * @param method
	 */
	private static void buildTimeline(List<SmaliBlock> blockList, SmaliMethod method) {
		buildTimelineForward(blockList, method);
		buildTimelineBackward(blockList, method);
	}
	
	/**
	 * Initializes scheme of register usage (timeline) and maps method parameters, if needed. 
	 * @param block
	 * @param method
	 * @param lines
	 */
	private static void initTimeline(SmaliBlock block, 
			SmaliMethod method, 
			ArrayList<Instruction> lines) {
		RegisterTimeline timeline = block.registerTimeline;
		lines.addAll(block.instructions);
		
		//add last line that can change registers
		if(block.isEndsByCondition) {
			lines.add(block.condition);
		} else if(block.isEndsByReturn) {
			lines.add(block.returnInstruction);
		} else {
			lines.trimToSize();
		}
		
		int linesCount = lines.size();
		
		//initialize timeline if needed
		if(!timeline.isInitialized()) {
			timeline.init(method, linesCount, block.isRootBlock);
		}
	}
	
	/**
	 * Build timeline by forward scanning
	 * @param blockList
	 * @param method
	 */
	private static void buildTimelineForward(List<SmaliBlock> blockList, SmaliMethod method) {
		SmaliBlock block = null;
		RegisterTimeline timeline = null;
		
		ArrayList<Instruction> lines = new ArrayList<Instruction>(128);
		
		for(int i = 0; i < blockList.size(); i++) {
			block = blockList.get(i);
			initTimeline(block, method, lines);
			
			timeline = block.registerTimeline;
			
			if(block.referencedBy.size() == 1) {
				//copy data from the end of previous block
				SmaliBlock refBlock = block.referencedBy.get(0);
				RegisterTimeline refTimeline = refBlock.registerTimeline; 
				int lastLineIdx = refTimeline.getLinesCount() - 1;
				List<RegisterInfo> prevSlice = refTimeline.getSlice(lastLineIdx);
				RegisterTimeline.copySliceTypeData(prevSlice, timeline.getSlice(0));
			}
			
			buildBlockTimelineForward(lines, timeline);
			
			lines.clear();
		}
		
	}
	
	/**
	 * Build timeline by backward scanning
	 * @param blockList
	 * @param method
	 */
	private static void buildTimelineBackward(List<SmaliBlock> blockList, SmaliMethod method) {
		//TODO: implement backward timeline scanning
		SmaliBlock block = null;
		RegisterTimeline timeline = null;
		
		List<SmaliBlock> sortedList = new LinkedList<SmaliBlock>();
		List<SmaliBlock> tmpList = new LinkedList<SmaliBlock>();
		tmpList.addAll(blockList);
		
		while(tmpList.size() > 0) {
			block = tmpList.remove(0);
			if(block.isEndsByReturn) {
				sortedList.add(block);
			} else if(block.isEndsByCondition && 
					sortedList.contains(block.nextBlockIfTrue) && 
					sortedList.contains(block.nextBlockIfFalse)) {
				sortedList.add(block);
			} else if(block.nextBlockIfTrue != null && sortedList.contains(block.nextBlockIfTrue)) {
				sortedList.add(block);
			} else {
				tmpList.add(block);
			}
		}
		
		ArrayList<Instruction> lines = new ArrayList<Instruction>(128);
		
		for(int i = 0; i < sortedList.size(); i++) {
			block = sortedList.get(i);
			initTimeline(block, method, lines);
			
			timeline = block.registerTimeline;
			
			buildBlockTimelineBackward(lines, timeline);
			
			lines.clear();
		}
	}
	
	/**
	 * Builds scheme of register usage (timeline) for the current block by parameter mapping and
	 * const definition recognizing. This method scans the block forward from its head.
	 * @param lines
	 */
	private static void buildBlockTimelineForward(ArrayList<Instruction> lines, 
			RegisterTimeline timeline) {
		int linesCount = lines.size();
		
		//processing all instructions
		Instruction instruction = null;
		List<RegisterInfo> currSlice = null;
		List<RegisterInfo> prevSlice = null;
		for(int i = 0; i < linesCount; i++) {
			instruction = lines.get(i);
			prevSlice = currSlice;
			currSlice = timeline.getSlice(i);
			
			//filling type of destination register
			String dstType = "(UNKNOWN)";
			OpcodeData opcodeData = instruction.getOpcodeData();
			if(opcodeData.getType() == OpcodeData.TYPE_GET) {
				//TODO: handle aget*
				List<SmaliCodeEntity> args = instruction.getArguments();
				FieldRef srcField = (FieldRef) args.get(args.size() - 1);
				dstType = srcField.getType();
			} else if(opcodeData.getType() == OpcodeData.TYPE_CONST) {
				if(opcodeData.getOpcode() == Opcodes.OP_CONST_STRING)
					dstType = "Ljava/lang/String;";
				else 
					dstType = "(BY CONST)";
			} else if(opcodeData.getType() == OpcodeData.TYPE_NEW) {
				if(opcodeData.getOpcode() == Opcodes.OP_NEW_INSTANCE) {
					List<SmaliCodeEntity> args = instruction.getArguments();
					ClassRef srcClass = (ClassRef) args.get(args.size() - 1);
					dstType = srcClass.getName();
				} else 
					dstType = "(BY NEW)";
			}

			
			for(SmaliCodeEntity entity : instruction.getArguments()) {
				if(entity instanceof Register) {
					Register var = (Register) entity;
					boolean is64bit = var.info.is64bit;
					if(var.isParameter()) {
						int idx = var.getMappedId();
						RegisterTimeline.setRegisterRWFlags(currSlice, 
								idx, 
								BOOL_TRUE, 
								BOOL_KEEP, 
								is64bit);
					} else {
						int idx = var.getId();
						if(var.isDestination()) {
							//There are one or none destination registers.
							//So, fill the type by dstType value
							RegisterTimeline.setRegisterRWFlags(currSlice, 
									idx, 
									BOOL_KEEP, 
									BOOL_TRUE, 
									is64bit);
							currSlice.get(idx).type = dstType;
							if(is64bit) {
								currSlice.get(idx + 1).type = dstType;
							}
						} else {
							RegisterTimeline.setRegisterRWFlags(currSlice, 
									idx, 
									BOOL_TRUE, 
									BOOL_KEEP, 
									is64bit);
						}
					}
				} else if(entity instanceof RegisterGroup) {
					//TODO: Check 64bit registers here
					for(SmaliCodeEntity subEntity : entity.getArguments()) {
						Register var = (Register) subEntity;
						int idx = -1;
						if(var.isParameter())
							idx = var.getMappedId();
						else
							idx = var.getId();
							
						RegisterTimeline.setRegisterRWFlags(currSlice, 
								idx, 
								BOOL_TRUE, 
								BOOL_KEEP, 
								false);
					}
				}
			}
			
			if(prevSlice == null)
				continue;
			
			//copy type of register in previous slice if it wasn't modified
			for(int j = 0; j < currSlice.size(); j++) {
				RegisterInfo registerInfo = currSlice.get(j);
				if(!registerInfo.isWritten && !registerInfo.isFinallyDefined) {
					registerInfo.copyTypeDataFrom(prevSlice.get(j));
				}
			}
		}
	}
	
	private static void buildBlockTimelineBackward(ArrayList<Instruction> lines,
			RegisterTimeline timeline) {
		//TODO: implement this
	}
}
