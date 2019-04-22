package com.litecoding.smali2java.entity.smali;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class SmaliMethod extends SmaliEntity
{	
	protected SmaliClass smaliClass;
	
	protected String name = "";
	protected boolean isConstructor = false;
	protected List<Param> params = new LinkedList<Param>(); 
	protected String returnType = "";
	
	/**
	 * Count of used local (non-parameter) registers
	 */
	protected int locals = 0;
	
	/**
	 * Total count of used registers
	 */
	protected int registers = 0;
	
	protected List<SmaliCodeEntity> commands = new LinkedList<SmaliCodeEntity>();
	
	protected ArrayList<Integer> param2registerMapping = new ArrayList<Integer>();
	
	public SmaliClass getSmaliClass() {
		return smaliClass;
	}
	
	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public boolean isConstructor()
	{
		return isConstructor;
	}
	
	public void setConstructor(boolean isConstructor)
	{
		this.isConstructor = isConstructor;
	}

	public List<Param> getParams()
	{
		return params;
	}
	
	public void addParam(Param param)
	{
		this.params.add(param);
	}
	
	public String getReturnType()
	{
		return returnType;
	}
	
	public void setReturnType(String returnType)
	{
		this.returnType = returnType;
	}

	public int getLocals()
	{
		return locals;
	}

	public void setLocals(int locals)
	{
		this.locals = locals;
		recalcRegisters();
	}
	
	public int getRegisters()
	{
		return registers;
	}

	public void setRegisters(int registers)
	{
		this.registers = registers;
		recalcLocals();
	}
	
	public List<SmaliCodeEntity> getCommands()
	{
		return commands;
	}
	
	public void addCommand(SmaliCodeEntity command)
	{
		this.commands.add(command);
	}
	
	/**
	 * 
	 * @param paramId
	 * @return vXX for pYY or -1 if error ocurred
	 */
	public int mapParameterToRegister(int paramId) {
		if(paramId < 0 || paramId >= param2registerMapping.size())
			return -1;
		return param2registerMapping.get(paramId);
	}
	
	/**
	 * 
	 * @param regId
	 * @return pXX for vYY or -1 if error ocurred
	 */
	public int mapRegisterToParameter(int regId) {
		for(int i = 0; i < param2registerMapping.size(); i++)
			if(regId == param2registerMapping.get(i))
				return i;
		return -1;
	}
	
	public void buildRegisterMapping() {
		param2registerMapping.clear();
		int currIdx = this.locals;
		
		if(!isFlagSet(STATIC)) {
			param2registerMapping.add(currIdx);
			currIdx++;
		}
		
		for(Param param : params) {
			param2registerMapping.add(currIdx);
			if(param.info.is64bit) {
				currIdx += 2;
			} else {
				currIdx++;
			}
		}
	}
	
	protected void registerForClass(SmaliClass smaliClass) {
		this.smaliClass = smaliClass;
	}
	
	private void recalcLocals() {
		int currIdx = 0;
		
		if(!isFlagSet(STATIC)) {
			param2registerMapping.add(currIdx);
			currIdx++;
		}
		
		for(Param param : params) {
			if(param.info.is64bit) {
				currIdx += 2;
			} else {
				currIdx++;
			}
		}
		
		locals = registers - currIdx;
	}
	
	private void recalcRegisters() {
		int currIdx = this.locals;
		
		if(!isFlagSet(STATIC)) {
			param2registerMapping.add(currIdx);
			currIdx++;
		}
		
		for(Param param : params) {
			if(param.info.is64bit) {
				currIdx += 2;
			} else {
				currIdx++;
			}
		}
		
		registers = currIdx;
	}
}
