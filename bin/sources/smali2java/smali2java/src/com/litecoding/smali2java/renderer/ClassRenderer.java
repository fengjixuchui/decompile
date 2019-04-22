package com.litecoding.smali2java.renderer;

import java.util.List;

import com.litecoding.smali2java.entity.smali.SmaliClass;
import com.litecoding.smali2java.entity.smali.SmaliEntity;
import com.litecoding.smali2java.entity.smali.SmaliField;
import com.litecoding.smali2java.entity.smali.SmaliMethod;

/**
 * 
 * This class generates java source code from SmaliClass entity
 * @author Dmitry S. Vorobiev
 *
 */
public class ClassRenderer
{
	private boolean isEgyptianBraces = false;
	
	public static String renderObject(SmaliClass smaliClass)
	{
		return (new ClassRenderer()).render(smaliClass);
	}
	
	public String render(SmaliClass smaliClass)
	{
		StringBuilder builder = new StringBuilder();
		builder.append(renderPackage(smaliClass.getClassName()));
		builder.append("\n");
		builder.append(renderImports(smaliClass.getImports()));
		builder.append("\n");
		
		switch(smaliClass.getFlagValue(SmaliEntity.MASK_ACCESSIBILITY))
		{
			case SmaliEntity.PUBLIC:
			{
				builder.append("public ");
				break;
			}
			case SmaliEntity.PROTECTED:
			{
				builder.append("protected ");
				break;
			}
			case SmaliEntity.PRIVATE:
			{
				builder.append("private ");
				break;
			}
			default:
			{
				break;
			}
		}
		
		if(smaliClass.isFlagSet(SmaliEntity.STATIC))
		{
			builder.append("static ");
		}
		
		if(smaliClass.isFlagSet(SmaliEntity.FINAL))
		{
			builder.append("final ");
		}
		
		if(smaliClass.isFlagSet(SmaliEntity.ABSTRACT))
		{
			builder.append("abstract ");
		}
		
		if(smaliClass.isFlagSet(SmaliEntity.INTERFACE)) {
			builder.append("interface ");
		} else {
			builder.append("class ");
		}
		
		
		builder.append(JavaRenderUtils.renderShortJavaClassName(smaliClass.getClassName()));
		if(!isEgyptianBraces)
			builder.append("\n");
		builder.append("{\n");
		
		builder.append(renderFields(smaliClass.getFields()));
		builder.append("\n");
		builder.append(renderMethods(smaliClass.getMethods()));
		builder.append("\n");
		
		builder.append("}\n");
		return builder.toString();
	}
	
	/*
	 * Private methods 
	 */	
	private String renderPackage(String className)
	{		
		//cut L from the beginning
		String name = className.substring(1, className.length());
		//change all / to .
		String[] namePieces = name.split("/");
		
		if(namePieces.length == 1) return "";
		
		StringBuilder builder = new StringBuilder();
		builder.append("package ");		
		for(int i = 0; i < namePieces.length - 2; i++)
		{
			builder.append(namePieces[i]);
			builder.append(".");
		}
		builder.append(namePieces[namePieces.length - 2]);
		builder.append(";\n");
		
		return builder.toString();
	}	
	
	private String renderImports(List<String> imports)
	{
		StringBuilder builder = new StringBuilder();
		for(String classImport: imports)
		{			
			String importClassName = JavaRenderUtils.renderJavaClassName(classImport);
			
			//filter all primitive types
			if(importClassName.indexOf(".") != -1)
			{
				//filter java.lang.*
				if(!importClassName.startsWith("java.lang.") ||
				   importClassName.lastIndexOf(".") > "java.lang.".length())
				{
					builder.append("import ");
					builder.append(importClassName);
					builder.append(";\n");
				}
			}
		}
		return builder.toString();
	}
	
	private String renderFields(List<SmaliField> fields)
	{
		StringBuilder builder = new StringBuilder();
		
		for(SmaliField field : fields)
		{
			switch(field.getFlagValue(SmaliEntity.MASK_ACCESSIBILITY))
			{
				case SmaliEntity.PUBLIC:
				{
					builder.append("public ");
					break;
				}
				case SmaliEntity.PROTECTED:
				{
					builder.append("protected ");
					break;
				}
				case SmaliEntity.PRIVATE:
				{
					builder.append("private ");
					break;
				}
				default:
				{
					break;
				}
			}
			
			if(field.isFlagSet(SmaliEntity.STATIC))
			{
				builder.append("static ");
			}
			
			if(field.isFlagSet(SmaliEntity.FINAL))
			{
				builder.append("final ");
			}
			
			builder.append(JavaRenderUtils.renderShortJavaClassName(field.getType()));
			builder.append(" ");
			builder.append(field.getName());
			
			//avoid setting null for primitive types
			if(field.getValue() == null && field.getType().length() != 1)
			{
				builder.append(" = null");
			}
			else if(field.getValue() != null)
			{
				builder.append(" = ");
				builder.append(field.getValue());
			}
			
			builder.append(";\n");
		}
		return builder.toString();
	}
	
	private String renderMethods(List<SmaliMethod> methods)
	{
		StringBuilder builder = new StringBuilder();
		for(SmaliMethod method : methods)
		{
			builder.append(MethodRenderer.renderObject(method));
		}
		return builder.toString();
	}
}
