package com.litecoding.smali2java.entity.smali;

import java.util.LinkedList;
import java.util.List;

/**
 * This is a piece of code from a method body.
 * 
 * @author Dmitry S. Vorobiev
 *
 */
public abstract class SmaliCodeEntity
{
	protected String name = "";
	protected List<SmaliCodeEntity> arguments = new LinkedList<SmaliCodeEntity>();

	protected SmaliCodeEntity()
	{
		
	}
	
	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public List<SmaliCodeEntity> getArguments()
	{
		return arguments;
	}

	public void addArgument(SmaliCodeEntity argument)
	{
		this.arguments.add(argument);
	}
}
