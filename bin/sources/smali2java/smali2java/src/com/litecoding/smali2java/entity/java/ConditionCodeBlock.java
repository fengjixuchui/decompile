package com.litecoding.smali2java.entity.java;

public class ConditionCodeBlock extends CodeBlock {
	protected RSExpression mCondition;
	protected CodeBlock mTrueBlock;
	protected CodeBlock mFalseBlock;

	public RSExpression getCondition() {
		return mCondition;
	}

	public void setCondition(RSExpression condition) {
		this.mCondition = condition;
	}

	public CodeBlock getTrueBlock() {
		return mTrueBlock;
	}

	public void setTrueBlock(CodeBlock trueBlock) {
		this.mTrueBlock = trueBlock;
	}

	public CodeBlock getFalseBlock() {
		return mFalseBlock;
	}

	public void setFalseBlock(CodeBlock falseBlock) {
		this.mFalseBlock = falseBlock;
	}

	@Override
	public String render() {
		StringBuilder builder = new StringBuilder();
		
		builder.append("if(");
		builder.append(mCondition.render());
		builder.append(") {\n");
		
		builder.append(mTrueBlock.render());
		
		if(mFalseBlock != null) {
			builder.append("} else {/n");
			builder.append(mFalseBlock.render());
		}
		builder.append("}/n");
		
		return builder.toString();
	}

}
