package com.litecoding.smali2java.entity.smali;

public abstract class SmaliEntity
{
	public static final String K_PRIVATE   = "private";
	public static final String K_PROTECTED = "protected";
	public static final String K_PUBLIC    = "public";
	public static final String K_STATIC    = "static";
	public static final String K_FINAL     = "final";
	public static final String K_ABSTRACT  = "abstract";
	
	public static final int PACKAGE   = 0x00;
	public static final int PRIVATE   = 0x01;
	public static final int PROTECTED = 0x02;
	public static final int PUBLIC    = 0x03;
	
	public static final int STATIC    = 0x04;
	public static final int FINAL     = 0x08;
	
	public static final int ABSTRACT  = 0x10;
	public static final int INTERFACE = 0x20;
	
	public static final int MASK_ACCESSIBILITY = 0x03;
	
	private int flags = 0;
	private boolean hasErrors = false;
	
	public SmaliEntity()
	{
		
	}
	
	public SmaliEntity(int flags)
	{
		this.flags = flags;
	}
	
	public int getFlags()
	{
		return flags;
	}
	
	public boolean isFlagSet(int flag)
	{
		return (flags & flag) == flag;
	}
	
	public void setFlag(int flag)
	{
		flags = (flags & (~flag)) | flag;
	}
	
	public void resetFlag(int flag)
	{
		flags &= ~flag;
	}
	
	public int getFlagValue(int mask)
	{
		return flags & mask;
	}
	
	public void setFlagValue(int mask, int value)
	{
		flags = (flags & (~mask)) | value;
	}
	
	public boolean checkFlagValue(int mask, int value)
	{
		return (flags & mask) == value;
	}		

	public void setHasErrors(boolean hasErrors)
	{
		this.hasErrors = hasErrors;
	}

	public boolean isHasErrors()
	{
		return hasErrors;
	}
	
	@Override
	public String toString()
	{
		return super.toString();
	}
}
