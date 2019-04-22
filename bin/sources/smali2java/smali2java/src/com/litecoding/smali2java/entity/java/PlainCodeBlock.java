package com.litecoding.smali2java.entity.java;

import java.util.LinkedList;
import java.util.List;

/**
 * Simple plain code block
 * @author Dmitry Vorobiev
 *
 */
public class PlainCodeBlock extends CodeBlock {
	
	protected List<Renderable> mItems = new LinkedList<Renderable>();

	public List<Renderable> getItems() {
		return mItems;
	}
	
	@Override
	public String render() {
		StringBuilder builder = new StringBuilder();
		
		for(Renderable line : mItems)
			builder.append(line.render());
		
		return builder.toString();
	}

}
