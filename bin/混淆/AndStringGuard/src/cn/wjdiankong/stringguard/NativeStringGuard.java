package cn.wjdiankong.stringguard;

import java.util.Base64;

public class NativeStringGuard {

  /**
   * 这个是解密方法，是和这个字符串加密工具string_gurad放在一起
   * 用于调用加密字符串信息
   * @param str
   * @return
   */
  public static String encryptStr(String str) {
    return new String(Base64.getEncoder().encode(str.getBytes()));
  }

  /**
   * 这个方法一定要在需要加密字符串信息的应用工程中，而且包名和类名不可更改
   * @param str
   * @return
   */
  public static String decryptStr(String str) {
    return new String(Base64.getDecoder().decode(str));
  }

}
