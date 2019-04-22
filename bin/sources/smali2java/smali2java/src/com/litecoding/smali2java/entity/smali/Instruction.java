package com.litecoding.smali2java.entity.smali;

public class Instruction extends SmaliCodeEntity
{
	protected OpcodeData opcodeData = OpcodeData.UNDEFINED_OPCODE_DATA;
	
	@Override
	public void setName(String name)
	{
		super.setName(name);
		this.opcodeData = OpcodeData.getOpcodeData(name);
	}
	
	public OpcodeData getOpcodeData()
	{
		return this.opcodeData;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		
		builder.append(name);
		builder.append(" (");
		builder.append(opcodeData.toString());
		builder.append(") ");
		
		for(SmaliCodeEntity arg : arguments) {
			builder.append(arg.toString());
			builder.append(" ");
		}
		
		return builder.toString();
	}
}
