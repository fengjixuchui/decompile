package com.litecoding.smali2java.renderer;

public class RendererException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3471198985195662071L;
	
	public RendererException() {
		super();
	}
    
    public RendererException(String message) {
    	super(message);
    }
    
    public RendererException(String message, Throwable cause) {
    	super(message, cause);
    }
    
    public RendererException(Throwable cause) {
    	super(cause);
    }

}
