package com.litecoding.smali2java.entity.smali;

public class FieldRef extends SmaliCodeEntity
{
	protected String className = "";
	protected String type = "";
	
	public String getClassName()
	{
		return className;
	}
	
	public void setClassName(String className)
	{
		this.className = className;
	}
	
	public String getType()
	{
		return type;
	}
	
	public void setType(String type)
	{
		this.type = type;
	}	
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		
		builder.append(className);
		builder.append(" -> ");
		builder.append(name);
		builder.append(":");
		builder.append(type);
		
		return builder.toString();
	}
}
