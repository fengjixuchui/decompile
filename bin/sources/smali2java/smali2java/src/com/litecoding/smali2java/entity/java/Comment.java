package com.litecoding.smali2java.entity.java;

public class Comment implements Renderable {
	protected String mComment = "";
	
	public Comment() {
		this("");
	}
	
	public Comment(String message) {
		this.mComment = message;
	}
	
	public String getComment() {
		return mComment;
	}
	
	public void setComment(String message) {
		if(message == null)
			mComment = "";
		else mComment = message;
	}
	
	@Override
	public String render() {
		boolean multiline = false;
		StringBuilder builder = new StringBuilder();
		
		if(mComment.contains("\n"))
			multiline = true;
		
		if(multiline)
			builder.append("/* ");
		else
			builder.append("// ");
		
		builder.append(mComment);
		
		if(multiline)
			builder.append("\n*/");
		
		return builder.toString();
	}

}
