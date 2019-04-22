package com.litecoding.smali2java.entity.smali;

public class RegisterGroup extends SmaliCodeEntity
{
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		
		builder.append("( ");
		
		for(SmaliCodeEntity arg : arguments) {
			builder.append(arg.toString());
			builder.append(" ");
		}
		
		builder.append(")");
		
		return builder.toString();
	}
}
