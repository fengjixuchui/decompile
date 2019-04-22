package com.litecoding.smali2java.entity.smali;


public class SmaliField extends SmaliEntity
{
	private String name = "";
	private String type = "";
	private String value = null;
	
	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getValue()
	{
		return value;
	}

	public void setValue(String value)
	{
		this.value = value;
	}

	@Override
	public String toString()
	{
		StringBuilder builder = new StringBuilder();
		int accessibility = getFlagValue(MASK_ACCESSIBILITY);
		switch(accessibility)
		{
			case PRIVATE:
			{
				builder.append(K_PRIVATE);
				break;
			}
			case PROTECTED:
			{
				builder.append(K_PROTECTED);
				break;
			}
			case PUBLIC:
			{
				builder.append(K_PUBLIC);
				break;
			}
			default:
			{
				break;
			}
		}
		builder.append(" ");
		
		if(isFlagSet(STATIC))
		{
			builder.append(K_STATIC);
			builder.append(" ");
		}
		
		if(isFlagSet(FINAL))
		{
			builder.append(K_FINAL);
			builder.append(" ");
		}
		
		builder.append(type);
		builder.append(" ");
		builder.append(name);
		if(value != null)
		{
			builder.append(" ");
			builder.append(value);
		}
		return builder.toString();
	}
}
