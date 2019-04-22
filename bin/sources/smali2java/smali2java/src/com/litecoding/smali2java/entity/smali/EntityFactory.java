package com.litecoding.smali2java.entity.smali;

import java.util.List;

public class EntityFactory
{
	public static Label createLabel(String name)
	{
		Label retVal = new Label();
		retVal.setName(name);
		return retVal;
	}
	
	public static FieldRef createFieldRef(String name, String className, String type)
	{
		FieldRef retVal = new FieldRef();
		retVal.setName(name);
		retVal.setClassName(className);
		retVal.setType(type);
		return retVal;
	}
	
	public static MethodRef createConstructorRef(String name, String className, List<Param> params, String returnType)
	{
		return createCommonMethodRef(name, className, params, returnType, true);
	}
	
	public static MethodRef createMethodRef(String name, String className, List<Param> params, String returnType)
	{
		return createCommonMethodRef(name, className, params, returnType, false);
	}
	
	public static MethodRef createCommonMethodRef()
	{
		return new MethodRef();
	}
	
	public static MethodRef createCommonMethodRef(String name, String className, List<Param> params, String returnType, boolean isConstructor)
	{
		MethodRef retVal = new MethodRef();
		retVal.setName(name);
		retVal.setClassName(className);
		if(params != null)
			retVal.getParams().addAll(params);
		retVal.setReturnType(returnType);
		retVal.setConstructor(isConstructor);
		return retVal;
	}	
	
	public static Instruction createInstruction(String name, List<SmaliCodeEntity> args)
	{
		Instruction retVal = new Instruction();
		retVal.setName(name);
		if(args != null)
			retVal.getArguments().addAll(args);
		return retVal;
	}
}
