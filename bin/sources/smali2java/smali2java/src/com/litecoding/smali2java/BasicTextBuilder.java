package com.litecoding.smali2java;


import com.litecoding.smali2java.parser.Rule_ALPHA;
import com.litecoding.smali2java.parser.Rule_COLON;
import com.litecoding.smali2java.parser.Rule_COMMA;
import com.litecoding.smali2java.parser.Rule_CR;
import com.litecoding.smali2java.parser.Rule_CRLF;
import com.litecoding.smali2java.parser.Rule_DIGIT;
import com.litecoding.smali2java.parser.Rule_DOT;
import com.litecoding.smali2java.parser.Rule_EQ;
import com.litecoding.smali2java.parser.Rule_HASH;
import com.litecoding.smali2java.parser.Rule_HEXDIG;
import com.litecoding.smali2java.parser.Rule_HTAB;
import com.litecoding.smali2java.parser.Rule_LF;
import com.litecoding.smali2java.parser.Rule_QUOT;
import com.litecoding.smali2java.parser.Rule_SEMICOLON;
import com.litecoding.smali2java.parser.Rule_SP;
import com.litecoding.smali2java.parser.Rule_UNDERSCORE;
import com.litecoding.smali2java.parser.Rule_VCHAR;
import com.litecoding.smali2java.parser.Terminal_NumericValue;
import com.litecoding.smali2java.parser.Terminal_StringValue;
import com.litecoding.smali2java.parser.Visitor;

public abstract class BasicTextBuilder implements Visitor
{

	@Override
	public Object visit(Rule_CR rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_LF rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_SP rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_HTAB rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_CRLF rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_QUOT rule)
	{
		return rule.spelling;
	}
	
	@Override
	public Object visit(Rule_HASH rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_COMMA rule)
	{
		return rule.spelling;
	}
	
	@Override
	public Object visit(Rule_DOT rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_ALPHA rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_DIGIT rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_VCHAR rule)
	{
		return rule.spelling;
	}
	
	@Override
	public Object visit(Rule_COLON rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_SEMICOLON rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_EQ rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_UNDERSCORE rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Rule_HEXDIG rule)
	{		
		return rule.spelling;
	}

	@Override
	public Object visit(Terminal_StringValue rule)
	{
		return rule.spelling;
	}

	@Override
	public Object visit(Terminal_NumericValue rule)
	{
		return rule.spelling;
	}
	
}
