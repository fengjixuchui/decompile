package com.litecoding.smali2java.entity.smali;

import java.util.LinkedList;
import java.util.List;

public class MethodRef extends SmaliCodeEntity
{
	protected String className = "";	
	protected boolean isConstructor = false;
	protected List<Param> params = new LinkedList<Param>(); 
	protected String returnType = "";
	
	public String getClassName()
	{
		return className;
	}
	
	public void setClassName(String className)
	{
		this.className = className;
	}
	
	public boolean isConstructor()
	{
		return isConstructor;
	}
	
	public void setConstructor(boolean isConstructor)
	{
		this.isConstructor = isConstructor;
	}
	
	public List<Param> getParams()
	{
		return params;
	}
	
	public void addParam(Param param)
	{
		this.params.add(param);
	}
	
	public String getReturnType()
	{
		return returnType;
	}
	
	public void setReturnType(String returnType)
	{
		this.returnType = returnType;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(className);
		builder.append(" -> ");
		
		if(isConstructor) {
			builder.append("(constructor) ");
		}
		
		builder.append(name);
		
		builder.append(" ( ");
		for(Param param : params) {
			builder.append(param.toString());
			builder.append(" ");
		}
		builder.append("):");
		builder.append(returnType);
		return builder.toString();
	}
}
