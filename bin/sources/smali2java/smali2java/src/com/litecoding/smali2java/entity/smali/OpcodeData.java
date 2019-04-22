package com.litecoding.smali2java.entity.smali;

import java.util.HashMap;
import java.util.Map;

import dalvik.bytecode.Opcodes;

public class OpcodeData
{
	public static final byte TYPE_UNUSED    = -1;
	public static final byte TYPE_OTHER     = 0;
	public static final byte TYPE_MOVE      = 1;
	public static final byte TYPE_RETURN    = 2;
	public static final byte TYPE_CONST     = 3;
	public static final byte TYPE_NEW       = 4;
	public static final byte TYPE_GOTO      = 5;
	public static final byte TYPE_CMP       = 6;
	public static final byte TYPE_CONDITION = 7;
	public static final byte TYPE_GET       = 8;
	public static final byte TYPE_PUT       = 9;
	public static final byte TYPE_INVOKE    = 10;
	public static final byte TYPE_MATH      = 11;
	
	public static final OpcodeData UNDEFINED_OPCODE_DATA = new OpcodeData("", 0, "00x", TYPE_UNUSED); 
	
	private static Map<String, OpcodeData> data = new HashMap<String, OpcodeData>();
	private String name = "";
	private int opcode = 0;
	private byte type = TYPE_UNUSED;
	
	/*see http://source.android.com/tech/dalvik/instruction-formats.html for more details*/
	private String format = "";
	private int lenIn16bitWords = 0;
	private int maxRegistersCount = 0;
	private boolean isRangeOfRegistersUsed = false; //r
	private boolean isExtraByte = false; //b
	private boolean isExtraConstPoolIdx = false; //c
	private boolean isExtraInterfaceConst = false; //f
	private boolean isExtraHat = false; //h
	private boolean isExtraInt = false; //i
	private boolean isExtraLong = false; //l
	private boolean isExtraMethodConst = false; //m
	private boolean isExtraNibble = false; //n
	private boolean isExtraShort = false; //s
	private boolean isExtraBranchTarget = false; //t
	//x means than none of previous extra flags is set
	
	private boolean isWrongFormat = false;
	
	static
	{
		putOpcodeData(new OpcodeData("nop", Opcodes.OP_NOP, "10x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("move", Opcodes.OP_MOVE, "12x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move/from16", Opcodes.OP_MOVE_FROM16, "22x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move/16", Opcodes.OP_MOVE_16, "32x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-wide", Opcodes.OP_MOVE_WIDE, "12x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-wide/from16", Opcodes.OP_MOVE_WIDE_FROM16, "22x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-wide/16", Opcodes.OP_MOVE_WIDE_16, "32x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-object", Opcodes.OP_MOVE_OBJECT, "12x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-object/from16", Opcodes.OP_MOVE_OBJECT_FROM16, "22x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-object/16", Opcodes.OP_MOVE_OBJECT_16, "32x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-result", Opcodes.OP_MOVE_RESULT, "11x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-result-wide", Opcodes.OP_MOVE_RESULT_WIDE, "11x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-result-object", Opcodes.OP_MOVE_RESULT_OBJECT, "11x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("move-exception", Opcodes.OP_MOVE_EXCEPTION, "11x", TYPE_MOVE));
		putOpcodeData(new OpcodeData("return-void", Opcodes.OP_RETURN_VOID, "10x", TYPE_RETURN));
		putOpcodeData(new OpcodeData("return", Opcodes.OP_RETURN, "11x", TYPE_RETURN));
		putOpcodeData(new OpcodeData("return-wide", Opcodes.OP_RETURN_WIDE, "11x", TYPE_RETURN));
		putOpcodeData(new OpcodeData("return-object", Opcodes.OP_RETURN_OBJECT, "11x", TYPE_RETURN));
		putOpcodeData(new OpcodeData("const/4", Opcodes.OP_CONST_4, "11n", TYPE_CONST));
		putOpcodeData(new OpcodeData("const/16", Opcodes.OP_CONST_16, "21s", TYPE_CONST));
		putOpcodeData(new OpcodeData("const", Opcodes.OP_CONST, "31i", TYPE_CONST));
		putOpcodeData(new OpcodeData("const/high16", Opcodes.OP_CONST_HIGH16, "21h", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-wide/16", Opcodes.OP_CONST_WIDE_16, "21s", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-wide/32", Opcodes.OP_CONST_WIDE_32, "31i", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-wide", Opcodes.OP_CONST_WIDE, "51l", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-wide/high16", Opcodes.OP_CONST_WIDE_HIGH16, "21h", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-string", Opcodes.OP_CONST_STRING, "21c", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-string-jumbo", Opcodes.OP_CONST_STRING_JUMBO, "31c", TYPE_CONST));
		putOpcodeData(new OpcodeData("const-class", Opcodes.OP_CONST_CLASS, "21c", TYPE_CONST));
		putOpcodeData(new OpcodeData("monitor-enter", Opcodes.OP_MONITOR_ENTER, "11x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("monitor-exit", Opcodes.OP_MONITOR_EXIT, "11x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("check-cast", Opcodes.OP_CHECK_CAST, "21c", TYPE_OTHER));
		putOpcodeData(new OpcodeData("instance-of", Opcodes.OP_INSTANCE_OF, "22c", TYPE_OTHER));
		putOpcodeData(new OpcodeData("array-length", Opcodes.OP_ARRAY_LENGTH, "12x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("new-instance", Opcodes.OP_NEW_INSTANCE, "21c", TYPE_NEW));
		putOpcodeData(new OpcodeData("new-array", Opcodes.OP_NEW_ARRAY, "22c", TYPE_NEW));
		putOpcodeData(new OpcodeData("filled-new-array", Opcodes.OP_FILLED_NEW_ARRAY, "35c", TYPE_NEW));
		putOpcodeData(new OpcodeData("filled-new-array-range", Opcodes.OP_FILLED_NEW_ARRAY_RANGE, "3rc", TYPE_NEW));
		putOpcodeData(new OpcodeData("fill-array-data", Opcodes.OP_FILL_ARRAY_DATA, "31t", TYPE_OTHER));
		putOpcodeData(new OpcodeData("throw", Opcodes.OP_THROW, "11x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("goto", Opcodes.OP_GOTO, "10t", TYPE_GOTO));
		putOpcodeData(new OpcodeData("goto/16", Opcodes.OP_GOTO_16, "20t", TYPE_GOTO));
		putOpcodeData(new OpcodeData("goto/32", Opcodes.OP_GOTO_32, "30t", TYPE_GOTO));
		putOpcodeData(new OpcodeData("packed-switch", Opcodes.OP_PACKED_SWITCH, "31t", TYPE_UNUSED));
		putOpcodeData(new OpcodeData("sparse-switch", Opcodes.OP_SPARSE_SWITCH, "31t", TYPE_UNUSED));
		putOpcodeData(new OpcodeData("cmpl-float", Opcodes.OP_CMPL_FLOAT, "23x", TYPE_CMP));
		putOpcodeData(new OpcodeData("cmpg-float", Opcodes.OP_CMPG_FLOAT, "23x", TYPE_CMP));
		putOpcodeData(new OpcodeData("cmpl-double", Opcodes.OP_CMPL_DOUBLE, "23x", TYPE_CMP));
		putOpcodeData(new OpcodeData("cmpg-double", Opcodes.OP_CMPG_DOUBLE, "23x", TYPE_CMP));
		putOpcodeData(new OpcodeData("cmp-long", Opcodes.OP_CMP_LONG, "23x", TYPE_CMP));
		putOpcodeData(new OpcodeData("if-eq", Opcodes.OP_IF_EQ, "22t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-ne", Opcodes.OP_IF_NE, "22t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-lt", Opcodes.OP_IF_LT, "22t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-ge", Opcodes.OP_IF_GE, "22t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-gt", Opcodes.OP_IF_GT, "22t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-le", Opcodes.OP_IF_LE, "22t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-eqz", Opcodes.OP_IF_EQZ, "21t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-nez", Opcodes.OP_IF_NEZ, "21t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-ltz", Opcodes.OP_IF_LTZ, "21t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-gez", Opcodes.OP_IF_GEZ, "21t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-gtz", Opcodes.OP_IF_GTZ, "21t", TYPE_CONDITION));
		putOpcodeData(new OpcodeData("if-lez", Opcodes.OP_IF_LEZ, "21t", TYPE_CONDITION));
	    /* 3e-43 unused */
		putOpcodeData(new OpcodeData("aget", Opcodes.OP_AGET, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aget-wide", Opcodes.OP_AGET_WIDE, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aget-object", Opcodes.OP_AGET_OBJECT, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aget-boolean", Opcodes.OP_AGET_BOOLEAN, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aget-byte", Opcodes.OP_AGET_BYTE, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aget-char", Opcodes.OP_AGET_CHAR, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aget-short", Opcodes.OP_AGET_SHORT, "23x", TYPE_GET));
		putOpcodeData(new OpcodeData("aput", Opcodes.OP_APUT, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("aput-wide", Opcodes.OP_APUT_WIDE, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("aput-object", Opcodes.OP_APUT_OBJECT, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("aput-boolean", Opcodes.OP_APUT_BOOLEAN, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("aput-byte", Opcodes.OP_APUT_BYTE, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("aput-char", Opcodes.OP_APUT_CHAR, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("aput-short", Opcodes.OP_APUT_SHORT, "23x", TYPE_PUT));
		putOpcodeData(new OpcodeData("iget", Opcodes.OP_IGET, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-wide", Opcodes.OP_IGET_WIDE, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-object", Opcodes.OP_IGET_OBJECT, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-boolean", Opcodes.OP_IGET_BOOLEAN, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-byte", Opcodes.OP_IGET_BYTE, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-char", Opcodes.OP_IGET_CHAR, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-short", Opcodes.OP_IGET_SHORT, "22c", TYPE_GET));
		putOpcodeData(new OpcodeData("iput", Opcodes.OP_IPUT, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-wide", Opcodes.OP_IPUT_WIDE, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-object", Opcodes.OP_IPUT_OBJECT, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-boolean", Opcodes.OP_IPUT_BOOLEAN, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-byte", Opcodes.OP_IPUT_BYTE, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-char", Opcodes.OP_IPUT_CHAR, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-short", Opcodes.OP_IPUT_SHORT, "22c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sget", Opcodes.OP_SGET, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sget-wide", Opcodes.OP_SGET_WIDE, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sget-object", Opcodes.OP_SGET_OBJECT, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sget-boolean", Opcodes.OP_SGET_BOOLEAN, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sget-byte", Opcodes.OP_SGET_BYTE, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sget-char", Opcodes.OP_SGET_CHAR, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sget-short", Opcodes.OP_SGET_SHORT, "21c", TYPE_GET));
		putOpcodeData(new OpcodeData("sput", Opcodes.OP_SPUT, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sput-wide", Opcodes.OP_SPUT_WIDE, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sput-object", Opcodes.OP_SPUT_OBJECT, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sput-boolean", Opcodes.OP_SPUT_BOOLEAN, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sput-byte", Opcodes.OP_SPUT_BYTE, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sput-char", Opcodes.OP_SPUT_CHAR, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("sput-short", Opcodes.OP_SPUT_SHORT, "21c", TYPE_PUT));
		putOpcodeData(new OpcodeData("invoke-virtual", Opcodes.OP_INVOKE_VIRTUAL, "35c", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-super", Opcodes.OP_INVOKE_SUPER, "35c", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-direct", Opcodes.OP_INVOKE_DIRECT, "35c", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-static", Opcodes.OP_INVOKE_STATIC, "35c", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-interface", Opcodes.OP_INVOKE_INTERFACE, "35c", TYPE_INVOKE));
	    /* 73 unused */
		putOpcodeData(new OpcodeData("invoke-virtual/range", Opcodes.OP_INVOKE_VIRTUAL_RANGE, "3rc", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-super/range", Opcodes.OP_INVOKE_SUPER_RANGE, "3rc", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-direct/range", Opcodes.OP_INVOKE_DIRECT_RANGE, "3rc", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-static/range", Opcodes.OP_INVOKE_STATIC_RANGE, "3rc", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-interface/range", Opcodes.OP_INVOKE_INTERFACE_RANGE, "3rc", TYPE_INVOKE));
	    /* 79-7a unused */
		putOpcodeData(new OpcodeData("neg-int", Opcodes.OP_NEG_INT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("not-int", Opcodes.OP_NOT_INT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("neg-long", Opcodes.OP_NEG_LONG, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("not-long", Opcodes.OP_NOT_LONG, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("neg-float", Opcodes.OP_NEG_FLOAT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("neg-double", Opcodes.OP_NEG_DOUBLE, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("int-to-long", Opcodes.OP_INT_TO_LONG, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("int-to-float", Opcodes.OP_INT_TO_FLOAT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("int-to-double", Opcodes.OP_INT_TO_DOUBLE, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("long-to-int", Opcodes.OP_LONG_TO_INT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("long-to-float", Opcodes.OP_LONG_TO_FLOAT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("long-to-double", Opcodes.OP_LONG_TO_DOUBLE, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("float-to-int", Opcodes.OP_FLOAT_TO_INT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("float-to-long", Opcodes.OP_FLOAT_TO_LONG, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("float-to-double", Opcodes.OP_FLOAT_TO_DOUBLE, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("double-to-int", Opcodes.OP_DOUBLE_TO_INT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("double-to-long", Opcodes.OP_DOUBLE_TO_LONG, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("double-to-float", Opcodes.OP_DOUBLE_TO_FLOAT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("int-to-byte", Opcodes.OP_INT_TO_BYTE, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("int-to-char", Opcodes.OP_INT_TO_CHAR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("int-to-short", Opcodes.OP_INT_TO_SHORT, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-int", Opcodes.OP_ADD_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-int", Opcodes.OP_SUB_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-int", Opcodes.OP_MUL_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-int", Opcodes.OP_DIV_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-int", Opcodes.OP_REM_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("and-int", Opcodes.OP_AND_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("or-int", Opcodes.OP_OR_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("xor-int", Opcodes.OP_XOR_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shl-int", Opcodes.OP_SHL_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shr-int", Opcodes.OP_SHR_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("ushr-int", Opcodes.OP_USHR_INT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-long", Opcodes.OP_ADD_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-long", Opcodes.OP_SUB_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-long", Opcodes.OP_MUL_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-long", Opcodes.OP_DIV_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-long", Opcodes.OP_REM_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("and-long", Opcodes.OP_AND_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("or-long", Opcodes.OP_OR_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("xor-long", Opcodes.OP_XOR_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shl-long", Opcodes.OP_SHL_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shr-long", Opcodes.OP_SHR_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("ushr-long", Opcodes.OP_USHR_LONG, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-float", Opcodes.OP_ADD_FLOAT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-float", Opcodes.OP_SUB_FLOAT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-float", Opcodes.OP_MUL_FLOAT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-float", Opcodes.OP_DIV_FLOAT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-float", Opcodes.OP_REM_FLOAT, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-double", Opcodes.OP_ADD_DOUBLE, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-double", Opcodes.OP_SUB_DOUBLE, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-double", Opcodes.OP_MUL_DOUBLE, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-double", Opcodes.OP_DIV_DOUBLE, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-double", Opcodes.OP_REM_DOUBLE, "23x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-int/2addr", Opcodes.OP_ADD_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-int/2addr", Opcodes.OP_SUB_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-int/2addr", Opcodes.OP_MUL_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-int/2addr", Opcodes.OP_DIV_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-int/2addr", Opcodes.OP_REM_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("and-int/2addr", Opcodes.OP_AND_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("or-int/2addr", Opcodes.OP_OR_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("xor-int/2addr", Opcodes.OP_XOR_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shl-int/2addr", Opcodes.OP_SHL_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shr-int/2addr", Opcodes.OP_SHR_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("ushr-int/2addr", Opcodes.OP_USHR_INT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-long/2addr", Opcodes.OP_ADD_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-long/2addr", Opcodes.OP_SUB_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-long/2addr", Opcodes.OP_MUL_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-long/2addr", Opcodes.OP_DIV_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-long/2addr", Opcodes.OP_REM_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("and-long/2addr", Opcodes.OP_AND_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("or-long/2addr", Opcodes.OP_OR_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("xor-long/2addr", Opcodes.OP_XOR_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shl-long/2addr", Opcodes.OP_SHL_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("shr-long/2addr", Opcodes.OP_SHR_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("ushr-long/2addr", Opcodes.OP_USHR_LONG_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-float/2addr", Opcodes.OP_ADD_FLOAT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-float/2addr", Opcodes.OP_SUB_FLOAT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-float/2addr", Opcodes.OP_MUL_FLOAT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-float/2addr", Opcodes.OP_DIV_FLOAT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-float/2addr", Opcodes.OP_REM_FLOAT_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-double/2addr", Opcodes.OP_ADD_DOUBLE_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("sub-double/2addr", Opcodes.OP_SUB_DOUBLE_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-double/2addr", Opcodes.OP_MUL_DOUBLE_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-double/2addr", Opcodes.OP_DIV_DOUBLE_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-double/2addr", Opcodes.OP_REM_DOUBLE_2ADDR, "12x", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-int/lit16", Opcodes.OP_ADD_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("rsub-int", Opcodes.OP_RSUB_INT, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-int/lit16", Opcodes.OP_MUL_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-int/lit16", Opcodes.OP_DIV_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-int/lit16", Opcodes.OP_REM_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("and-int/lit16", Opcodes.OP_AND_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("or-int/lit16", Opcodes.OP_OR_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("xor-int/lit16", Opcodes.OP_XOR_INT_LIT16, "22s", TYPE_MATH));
		putOpcodeData(new OpcodeData("add-int/lit8", Opcodes.OP_ADD_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("rsub-int/lit8", Opcodes.OP_RSUB_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("mul-int/lit8", Opcodes.OP_MUL_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("div-int/lit8", Opcodes.OP_DIV_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("rem-int/lit8", Opcodes.OP_REM_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("and-int/lit8", Opcodes.OP_AND_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("or-int/lit8", Opcodes.OP_OR_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("xor-int/lit8", Opcodes.OP_XOR_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("shl-int/lit8", Opcodes.OP_SHL_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("shr-int/lit8", Opcodes.OP_SHR_INT_LIT8, "22b", TYPE_MATH));
		putOpcodeData(new OpcodeData("ushr-int/lit8", Opcodes.OP_USHR_INT_LIT8, "22b", TYPE_MATH));
	    /* e3-e7 unused */
	    /*
	     * The rest of these are either generated by dexopt for optimized
	     * code, or inserted by the VM at runtime.  They are never generated
	     * by "dx".
	     */
		//here using "10x" as format while I don't know the original one
		putOpcodeData(new OpcodeData("iget-wide-volatile", Opcodes.OP_IGET_WIDE_VOLATILE, "10x", TYPE_GET));
		putOpcodeData(new OpcodeData("iput-wide-volatile", Opcodes.OP_IPUT_WIDE_VOLATILE, "10x", TYPE_PUT));
		putOpcodeData(new OpcodeData("sget-wide-volatile", Opcodes.OP_SGET_WIDE_VOLATILE, "10x", TYPE_GET));
		putOpcodeData(new OpcodeData("sput-wide-volatile", Opcodes.OP_SPUT_WIDE_VOLATILE, "10x", TYPE_PUT));
		putOpcodeData(new OpcodeData("breakpoint", Opcodes.OP_BREAKPOINT, "10x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("throw-verification-error", Opcodes.OP_THROW_VERIFICATION_ERROR, "10x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("execute-inline", Opcodes.OP_EXECUTE_INLINE, "10x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("execute-inline-range", Opcodes.OP_EXECUTE_INLINE_RANGE, "10x", TYPE_OTHER));
		putOpcodeData(new OpcodeData("invoke-direct-empty", Opcodes.OP_INVOKE_DIRECT_EMPTY, "10x", TYPE_INVOKE));
	    /* f1 unused (OP_INVOKE_DIRECT_EMPTY_RANGE?) */
		putOpcodeData(new OpcodeData("iget-quick", Opcodes.OP_IGET_QUICK, "10x", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-wide-quick", Opcodes.OP_IGET_WIDE_QUICK, "10x", TYPE_GET));
		putOpcodeData(new OpcodeData("iget-object-quick", Opcodes.OP_IGET_OBJECT_QUICK, "10x", TYPE_GET));
		putOpcodeData(new OpcodeData("iput-quick", Opcodes.OP_IPUT_QUICK, "10x", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-wide-quick", Opcodes.OP_IPUT_WIDE_QUICK, "10x", TYPE_PUT));
		putOpcodeData(new OpcodeData("iput-object-quick", Opcodes.OP_IPUT_OBJECT_QUICK, "10x", TYPE_PUT));
		putOpcodeData(new OpcodeData("invoke-virtual-quick", Opcodes.OP_INVOKE_VIRTUAL_QUICK, "10x", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-virtual-quick-range", Opcodes.OP_INVOKE_VIRTUAL_QUICK_RANGE, "10x", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-super-quick", Opcodes.OP_INVOKE_SUPER_QUICK, "10x", TYPE_INVOKE));
		putOpcodeData(new OpcodeData("invoke-super-quick-range", Opcodes.OP_INVOKE_SUPER_QUICK_RANGE, "10x", TYPE_INVOKE));
	    /* fc unused (OP_INVOKE_DIRECT_QUICK?) */
	    /* fd unused (OP_INVOKE_DIRECT_QUICK_RANGE?) */
	    /* fe unused (OP_INVOKE_INTERFACE_QUICK?) */
	    /* ff unused (OP_INVOKE_INTERFACE_QUICK_RANGE?) */
	}
	
	private OpcodeData(String name, int opcode, String format, byte type)
	{
		this.name = name;
		this.opcode = opcode;
		this.type = type;
		
		if(format == null)
			this.format = "";
		else
			this.format = format;
		
		int fmtLen = this.format.length();
		if(fmtLen >= 3) {
			try {
				this.lenIn16bitWords = Integer.parseInt(this.format.substring(0, 1));
				
				String registers = this.format.substring(1, 2);
				if(registers.equals("r"))
					this.isRangeOfRegistersUsed = true;
				else {
					this.isRangeOfRegistersUsed = false;
					this.maxRegistersCount = Integer.parseInt(registers);
				}
				
				String extra = this.format.substring(2, 3);  //b, c, f, h, i, l, m, n, s, t, x
				if(extra.equals("b"))
					this.isExtraByte = true;
				else if(extra.equals("c"))
					this.isExtraConstPoolIdx = true;
				else if(extra.equals("f"))
					this.isExtraInterfaceConst = true;
				else if(extra.equals("h"))
					this.isExtraHat = true;
				else if(extra.equals("i"))
					this.isExtraInt = true;
				else if(extra.equals("l"))
					this.isExtraLong = true;
				else if(extra.equals("m"))
					this.isExtraMethodConst = true;
				else if(extra.equals("n"))
					this.isExtraNibble = true;
				else if(extra.equals("s"))
					this.isExtraShort = true;
				else if(extra.equals("t"))
					this.isExtraBranchTarget = true;
				else if(extra.equals("x")) {
					this.isExtraByte = false;
					this.isExtraConstPoolIdx = false;
					this.isExtraInterfaceConst = false;
					this.isExtraHat = false;
					this.isExtraInt = false;
					this.isExtraLong = false;
					this.isExtraMethodConst = false;
					this.isExtraNibble = false;
					this.isExtraShort = false;
					this.isExtraBranchTarget = false;
				} else {
					this.isWrongFormat = true;
				}
				
			} catch (Exception e) {
				this.isWrongFormat = true;
			}
			
		}
	}

	public String getName()
	{
		return name;
	}

	public int getOpcode()
	{
		return opcode;
	}
	
	public int getType()
	{
		return type;
	}
	
	public String getFormat() {
		return format;
	}

	public int getLenIn16bitWords() {
		return lenIn16bitWords;
	}

	public int getMaxRegistersCount() {
		return maxRegistersCount;
	}

	public boolean isRangeOfRegistersUsed() {
		return isRangeOfRegistersUsed;
	}

	public boolean isExtraByte() {
		return isExtraByte;
	}

	public boolean isExtraConstPoolIdx() {
		return isExtraConstPoolIdx;
	}

	public boolean isExtraInterfaceConst() {
		return isExtraInterfaceConst;
	}

	public boolean isExtraHat() {
		return isExtraHat;
	}

	public boolean isExtraInt() {
		return isExtraInt;
	}

	public boolean isExtraLong() {
		return isExtraLong;
	}

	public boolean isExtraMethodConst() {
		return isExtraMethodConst;
	}

	public boolean isExtraNibble() {
		return isExtraNibble;
	}

	public boolean isExtraShort() {
		return isExtraShort;
	}

	public boolean isExtraBranchTarget() {
		return isExtraBranchTarget;
	}

	public boolean isWrongFormat() {
		return isWrongFormat;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		
		switch(type) {
		case TYPE_UNUSED: {
			builder.append("type: UNUSED ");
			break;
		}
		case TYPE_OTHER: {
			builder.append("type: OTHER ");
			break;
		}
		case TYPE_MOVE: {
			builder.append("type: MOVE ");
			break;
		}
		case TYPE_RETURN: {
			builder.append("type: RETURN ");
			break;
		}
		case TYPE_CONST: {
			builder.append("type: CONST ");
			break;
		}
		case TYPE_NEW: {
			builder.append("type: NEW ");
			break;
		}
		case TYPE_GOTO: {
			builder.append("type: GOTO ");
			break;
		}
		case TYPE_CMP: {
			builder.append("type: CMP ");
			break;
		}
		case TYPE_CONDITION: {
			builder.append("type: CONDITION ");
			break;
		}
		case TYPE_GET: {
			builder.append("type: GET ");
			break;
		}
		case TYPE_PUT: {
			builder.append("type: PUT ");
			break;
		}
		case TYPE_INVOKE: {
			builder.append("type: INVOKE ");
			break;
		}
		case TYPE_MATH: {
			builder.append("type: MATH ");
			break;
		}
		default: {
			builder.append("type: [UNKNOWN] ");
		}
		}
		builder.append(name);
		return builder.toString();
	}

	public static OpcodeData getOpcodeData(String name)
	{
		if(name == null) return null;
		OpcodeData retVal = data.get(name.toLowerCase());
		if(retVal == null) retVal = UNDEFINED_OPCODE_DATA;
		return retVal;
	}
	
	private static void putOpcodeData(OpcodeData opcodeData)
	{
		data.put(opcodeData.getName(), opcodeData);
	}
}
