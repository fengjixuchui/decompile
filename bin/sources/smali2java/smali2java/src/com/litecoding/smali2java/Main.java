package com.litecoding.smali2java;

import java.io.File;

public class Main {

	/**
	 * Entry point
	 * @param args
	 */
	public static void main(String[] args) {
		if(args.length == 0) {
			showUsage();
			return;
		}
		
		String src = null;
		String dst = null;
		boolean batchMode = false;
		
		for(int i = 0; i < args.length; i++) {
			if(args[i].equals("--batch"))
				batchMode = true;
			else if(src == null)			
				src = args[i];							
			else if(dst == null)
				dst = args[i];
		}

		if(src == null) {
			System.err.println("Error: input not specified");
			return;
		}
		
		if(dst == null) {
			System.out.println("Notice: using standard destination");		
		}
		
		try {
			if(!batchMode)
				processFile(src, dst);
			else
				processDir(src, dst);
		} catch(Exception e) {
			System.err.println("Error: error while processing file");
			e.printStackTrace();
		}
	}

	private static void processDir(String src, String dst) throws Exception {
		if(dst == null) dst = src;
		File srcDir = new File(src);
		File[] fileArray = srcDir.listFiles();
		for(int i = 0; i < fileArray.length; i++) {
			String inputName = fileArray[i].getName();
			if(fileArray[i].isFile() && inputName.endsWith(".smali")) {
				String outputName = (inputName.split("\\."))[0].concat(".java");
				if(!dst.endsWith(File.separator))
					outputName = File.separator.concat(outputName);
				
				outputName = dst.concat(outputName);
				
				if(!src.endsWith(File.separator))
					inputName = File.separator.concat(inputName);
				
				inputName = src.concat(inputName);
				processFile(inputName, outputName);
			}
		}
	}

	private static void processFile(String src, String dst) throws Exception {
		File srcFile = new File(src);
		if(!srcFile.isFile()) {
			System.err.println("Note: " + src + " is not a file, skippig it");
			return;
		}
		Ecosystem.getInstance().processFile(src, dst);
		System.out.println("Success: " + dst);
	}

	private static void showUsage() {
		System.out.println("smali2java: simple smali to java converter");
		System.out.println("USAGE: smali2java [--batch] <input> [output]");
		System.out.println("input\t- input file (or dir if used in batch mode)");
		System.out.println("output\t- output file (or dir if used in batch mode)");
		System.out.println("--batch\t- enables batch mode");
		System.out.println();
	}

}
