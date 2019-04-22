package com.litecoding.smali2java.entity.java;

import java.util.ArrayList;
import java.util.List;

import com.litecoding.smali2java.renderer.JavaRenderUtils;

public class MethodCall extends JavaEntity {
	public static final byte CALL_STATIC = 0;
	public static final byte CALL_DIRECT = 1;
	public static final byte CALL_INTERFACE = 2;
	
	protected byte mCallMode = CALL_DIRECT;
	protected boolean mIsThisCall = false;
	protected boolean mIsSuperCall = false;
	protected boolean mIsConstructorCall = false;
	
	protected String mClassName = "";
	protected String mMethodName = "";
	
	protected LSExpression mInstanceReference = null; //null for static, this or super calls
	protected List<RSExpression> mParams = new ArrayList<RSExpression>();
	
	public MethodCall(byte callmode, String className, String methodName) {
		
	}
	
	public byte getCallMode() {
		return mCallMode;
	}

	public void setCallMode(byte callMode) {
		this.mCallMode = callMode;
	}

	public boolean isThisCall() {
		return mIsThisCall;
	}

	public void setThisCall(boolean isThisCall) {
		this.mIsThisCall = isThisCall;
	}

	public boolean isSuperCall() {
		return mIsSuperCall;
	}

	public void setSuperCall(boolean isSuperCall) {
		this.mIsSuperCall = isSuperCall;
	}
	
	public boolean isConstructorCall() {
		return mIsConstructorCall;
	}

	public void setConstructorCall(boolean isConstructorCall) {
		this.mIsConstructorCall = isConstructorCall;
	}

	public String getClassName() {
		return mClassName;
	}

	public void setClassName(String className) {
		this.mClassName = className;
	}

	public String getMethodName() {
		return mMethodName;
	}

	public void setMethodName(String methodName) {
		this.mMethodName = methodName;
	}

	public LSExpression getInstanceReference() {
		return mInstanceReference;
	}

	public void setInstanceReference(LSExpression instanceReference) {
		this.mInstanceReference = instanceReference;
	}

	public List<RSExpression> getParams() {
		return mParams;
	}

	@Override
	public String render() {
		StringBuilder builder = new StringBuilder();
		
		if(mCallMode != CALL_STATIC) {
			if(mIsThisCall) {
				builder.append("this");
			} else if(mIsSuperCall) {
				builder.append("super");
			} else {
				builder.append(mInstanceReference.render());
				if(mCallMode == CALL_INTERFACE) {
					builder.insert(0, " ");
					builder.insert(0, ")");
					builder.insert(0, JavaRenderUtils.renderShortJavaClassName(mClassName));
					builder.insert(0, "(");
					builder.insert(0, "(");
					builder.append(")");
				}
				
			}
		} else {
			builder.append(JavaRenderUtils.renderShortJavaClassName(mClassName));
		}
		
		if(!mIsConstructorCall) {
			builder.append(".");
			builder.append(mMethodName);
		}
		
		builder.append("(");
		for(Renderable param : mParams) {
			builder.append(param.render());
			builder.append(", ");
		}
		builder.append(");");
		
		return builder.toString();
	}

}
