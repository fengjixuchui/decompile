package com.litecoding.smali2java.entity.smali;

import java.util.LinkedList;
import java.util.List;


public class SmaliClass extends SmaliEntity
{
	public static final String D_CLASS = ".class";
	public static final String D_SUPER = ".super";
	public static final String D_SOURCE = ".source";
	
	protected List<String> importTable = new LinkedList<String>();
	protected List<SmaliField> fields = new LinkedList<SmaliField>();
	protected List<SmaliMethod> methods = new LinkedList<SmaliMethod>();
	
	protected String className = "";
	protected String superClassName = "";
	protected String fileName = "";	
	
	public String getClassName()
	{
		return className;
	}
	
	public void setClassName(String className)
	{
		this.className = className;
	}
	
	public String getSuperClassName()
	{
		return superClassName;
	}
	
	public void setSuperClassName(String superClassName)
	{
		this.superClassName = superClassName;
	}
	
	public String getFileName()
	{
		return fileName;
	}
	
	public void setFileName(String fileName)
	{
		this.fileName = fileName;
	}
	
	public void addImport(String importName)
	{
		if(!importTable.contains(importName))
			importTable.add(importName);
	}
	
	public List<String> getImports()
	{
		return importTable;
	}
	
	public void addField(SmaliField field)
	{
		fields.add(field);
	}
	
	public List<SmaliField> getFields()
	{
		return fields;
	}
	
	public void addMethod(SmaliMethod method)
	{
		methods.add(method);
		method.registerForClass(this);
	}
	
	public List<SmaliMethod> getMethods()
	{
		return methods;
	}
	
	@Override
	public String toString()
	{
		StringBuilder builder = new StringBuilder();
		builder.append(className);
		builder.append("\n");
		builder.append(superClassName);
		builder.append("\n");
		builder.append(fileName);
		builder.append("\n");
		builder.append(fields.toString());
		return builder.toString();
	}
}
