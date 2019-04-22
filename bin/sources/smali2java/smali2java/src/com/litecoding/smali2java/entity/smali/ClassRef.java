package com.litecoding.smali2java.entity.smali;

public class ClassRef extends SmaliCodeEntity
{
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(name);		
		return builder.toString();
	}
}
