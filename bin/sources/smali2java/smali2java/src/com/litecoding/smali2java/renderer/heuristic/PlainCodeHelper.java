package com.litecoding.smali2java.renderer.heuristic;

import com.litecoding.smali2java.entity.smali.SmaliMethod;
import com.litecoding.smali2java.renderer.SmaliRenderer.SmaliBlock;

public class PlainCodeHelper {
	
	public static boolean tryConvert(SmaliMethod method, SmaliBlock block) {
		if(!block.isPlain())
			return false;
		
		if(method.isConstructor())
			return tryConstructor(method, block);
		
		if(method.getName().startsWith("get") || 
				method.getName().startsWith("set") || 
				method.getName().startsWith("is"))
			return tryAccessor(method, block);
		
		return tryDefault(method, block);
	}

	public static boolean tryConstructor(SmaliMethod method, SmaliBlock block) {
		String superClassName = method.getSmaliClass().getSuperClassName();
		
		return false;
	}
	
	public static boolean tryAccessor(SmaliMethod method, SmaliBlock block) {
		return false;
	}
	
	public static boolean tryDefault(SmaliMethod method, SmaliBlock block) {
		return false;
	}
}
