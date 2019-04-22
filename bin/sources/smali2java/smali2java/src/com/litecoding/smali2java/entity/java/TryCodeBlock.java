package com.litecoding.smali2java.entity.java;

public class TryCodeBlock extends CodeBlock {
	protected CodeBlock mTryBlock;
	protected CodeBlock mCatchBlock;
	protected CodeBlock mFinallyBlock;
	
	public CodeBlock getTryBlock() {
		return mTryBlock;
	}

	public void setTryBlock(CodeBlock tryBlock) {
		this.mTryBlock = tryBlock;
	}

	public CodeBlock getCatchBlock() {
		return mCatchBlock;
	}

	public void setCatchBlock(CodeBlock catchBlock) {
		this.mCatchBlock = catchBlock;
	}

	public CodeBlock getFinallyBlock() {
		return mFinallyBlock;
	}

	public void setFinallyBlock(CodeBlock finallyBlock) {
		this.mFinallyBlock = finallyBlock;
	}

	@Override
	public String render() {
		StringBuilder builder = new StringBuilder();
		
		builder.append("try {\n");
		builder.append(mTryBlock.render());
		builder.append("} catch {\n"); //TODO: fix this
		
		builder.append(mCatchBlock.render());
		
		if(mFinallyBlock != null) {
			builder.append("} finally {/n");
			builder.append(mFinallyBlock.render());
		}
		builder.append("}/n");
		
		return builder.toString();
	}

}
