package com.litecoding.smali2java.entity.java;

public class VariableDeclaration implements Renderable {
	
	protected String mName = "";
	protected String mType = "";
	protected String mValue;
	
	public VariableDeclaration() {
		this("", "", "");
	}
	
	public VariableDeclaration(String type) {
		this("", type, "");
	}
	
	public VariableDeclaration(String name, String type) {
		this(name, type, "");
	}
	
	public VariableDeclaration(String name, String type, String value) {
		this.mName = name;
		this.mType = type;
		this.mValue = value;
	}

	@Override
	public String render() {
		StringBuilder builder = new StringBuilder();
		builder.append(this.mType);
		builder.append(" ");
		builder.append(this.mName);
		if(!(this.mValue == null) && !this.mValue.isEmpty()) {
			builder.append(" = ");
			builder.append(this.mValue);
		}
		builder.append(";\n");
		return builder.toString();
	}

}
