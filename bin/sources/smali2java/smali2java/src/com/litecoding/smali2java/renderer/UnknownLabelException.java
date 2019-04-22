package com.litecoding.smali2java.renderer;

public class UnknownLabelException extends RendererException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7272384650989156083L;

	public UnknownLabelException() {
		super();
	}
    
    public UnknownLabelException(String message) {
    	super(message);
    }
    
    public UnknownLabelException(String message, Throwable cause) {
    	super(message, cause);
    }
    
    public UnknownLabelException(Throwable cause) {
    	super(cause);
    }
}
