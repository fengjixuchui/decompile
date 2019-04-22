package com.litecoding.smali2java.entity.java;

public class Assignment extends JavaEntity {
	protected LSExpression mLeftSide = null;
	protected RSExpression mRightSide = null;
	@Override
	public String render() {
		StringBuilder builder = new StringBuilder();
		builder.append(mLeftSide.render());
		builder.append(" = ");
		builder.append(mRightSide.render());
		builder.append(";\n");
		return null;
	}
}
