package com.litecoding.smali2java.entity.smali;

import com.litecoding.smali2java.entity.smali.Register.RegisterInfo;

/**
 * SmaliMethod parameter class
 * @author Dmitry S. Vorobiev
 *
 */
public class Param
{
	private String name = "";
	public final RegisterInfo info = new RegisterInfo();
	
	public Param()
	{
		
	}
	
	public Param(String type)
	{
		setType(type);
	}
	
	public Param(String type, String name)
	{
		this(type);
		this.name = name;
	}
	
	public String getType()
	{
		return info.type;
	}
	
	public void setType(String type)
	{
		this.info.type = type;
		if("J".equals(type) || "D".equals(type)) {
			info.is64bit = true;
			info.is64bitMaster = true;
		} else {
			info.is64bit = false;
			info.is64bitMaster = false;
		}
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		if(name != null && !name.isEmpty()) {
			builder.append(name);
			builder.append(":");
		}
		
		builder.append(info.type);
		
		if(info.is64bit) {
			builder.append(" (64bit)");
		}
		
		return builder.toString();
	}
}
