package cn.wjdiankong.stringguard.test;

import cn.wjdiankong.stringguard.NativeStringGuard;

public class MyTestClass {

  public final static String GET_USER_URL = "http://www.520monkey.com";
  public final static String ERROR = NativeStringGuard.encryptStr("ERROR");
  public final String MSG = "message";

  public static String getUserInfo(String url) {
    String params = NativeStringGuard.decryptStr("name=jiangwei");
    return GET_USER_URL + "/getUser?id=1111&i" + params;
  }

  public static String getUserInfo() {
    return "test";
  }

}
