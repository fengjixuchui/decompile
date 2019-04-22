package com.litecoding.smali2java.entity.smali;

public class Register extends SmaliCodeEntity {
	protected boolean isParameter = false;
	protected int id = 0;
	
	/**
	 * Id of vXX register, where pYY register was mapped.
	 * Used when isParameter == true only.
	 * Read more: {@link http://code.google.com/p/smali/wiki/Registers}
	 */
	protected int mappedId = -1;
	protected boolean isDestination = false;
	public final RegisterInfo info = new RegisterInfo();
		
	@Override
	public void setName(String name) {
		super.setName(name);
		if(name.startsWith("p"))
			isParameter = true;
		else
			isParameter = false;
		
		id = Integer.parseInt(name.substring(1));
	}
	
	public boolean isParameter() {
		return isParameter;
	}
	
	public void setParameter(boolean isParameter) {
		this.isParameter = isParameter;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getMappedId() {
		return mappedId;
	}
	
	public void setMappedId(int mappedId) {
		this.mappedId = mappedId;
	}
		
	public boolean isDestination() {
		return isDestination;
	}
	
	public void setDestination(boolean isDestination) {
		this.isDestination = isDestination;
	}
	
	public String getType() {
		return info.type;
	}
	
	public void setType(String type) {
		this.info.type = type;
	}
	
	public boolean is64bit() {
		return info.is64bit;
	}
	
	public boolean isThis() {
		return info.isThis;
	}
	
	public void set64bit(boolean is64bit) {
		this.info.is64bit = is64bit;
	}
	
	public void mapRegister(SmaliMethod method) {
		if(!isParameter)
			return;
		
		if(id == 0 && !method.isFlagSet(SmaliEntity.STATIC))
			info.isThis = true;
		else
			info.isThis = false;
		
		mappedId = method.mapParameterToRegister(id);
	}
	
	@Override
	public String toString() {
		return name;
	}
	
	public static class RegisterInfo {
		public boolean is64bit = false;
		public boolean is64bitMaster = false;
		public String type = "";
		public boolean isThis = false;
		public boolean isRead = false;
		public boolean isWritten = false;
		
		public boolean isByConst4 = false;
		
		public boolean isFinallyDefined = false;

		public void copyTypeDataFrom(RegisterInfo inInfo) {
			isThis = inInfo.isThis;
			type = inInfo.type;
			is64bit = inInfo.is64bit;
			is64bitMaster = inInfo.is64bitMaster;
			isFinallyDefined = inInfo.isFinallyDefined;
		}
		
		@Override
		public String toString() {
			StringBuilder builder = new StringBuilder();
			
			if(isRead)
				builder.append("r");
			else
				builder.append("-");
			
			if(isWritten)
				builder.append("w");
			else
				builder.append("-");
			
			builder.append(" ");
			
			if(is64bit) {
				builder.append("64");
				if(is64bitMaster)
					builder.append("M");
				else
					builder.append("S");
				
				builder.append(" ");
			}
			
			builder.append(type);
			
			if(isThis) {
				builder.append(" (this)");
			}
			
			return builder.toString();
		}
	}
}
