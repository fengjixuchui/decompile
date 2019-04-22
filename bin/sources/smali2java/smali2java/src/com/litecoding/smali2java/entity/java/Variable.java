package com.litecoding.smali2java.entity.java;

public class Variable implements LSExpression, RSExpression {
	
	protected String mName = "";
	protected String mType = "";
	
	public Variable() {
		this("", "");
	}
	
	public Variable(String type) {
		this("", type);
	}
	
	public Variable(String name, String type) {
		this.mName = name;
		this.mType = type;
	}
	
	public String getName() {
		return mName;
	}
	
	public void setName(String name) {
		this.mName = name;
	}
	
	public String getType() {
		return mType;
	}
	
	public void setType(String type) {
		this.mType = type;
	}

	@Override
	public String render() {
		return mName;
	}
	
}
