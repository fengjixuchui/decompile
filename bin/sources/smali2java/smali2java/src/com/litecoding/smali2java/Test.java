package com.litecoding.smali2java;


public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			Ecosystem.getInstance().processFile("../smali-example/smali-project/HelloWorld/HelloWorld.smali", null);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
