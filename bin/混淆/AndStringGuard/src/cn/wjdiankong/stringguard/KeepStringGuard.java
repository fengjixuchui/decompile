package cn.wjdiankong.stringguard;

import java.util.ArrayList;
import java.util.List;

public class KeepStringGuard {

  private static List<String> keepList = new ArrayList<String>();

  public static void initKeepList(String keepFile) {
    keepList = StringGuardUtils.readFileLine(keepFile);
    System.out.println(keepList);
  }

  public static boolean isValid(){
    return keepList != null;
  }

  public static boolean isKeep (String filePath) {
    if (StringGuardUtils.isTextEmpty(filePath)) {
      return true;
    }
    try {
      for (String keepPath : keepList) {
        if (keepPath.endsWith("*")) {
          //* 通配符: xxx.yyy.zzz.*
          String tmpPath = keepPath.substring(0, keepPath.length()-2);
          if (filePath.startsWith(tmpPath)) {
            return true;
          }
        } else if (filePath.endsWith(keepPath)) {
          //不包含通配符，全匹配keep
          return true;
        }
      }
    }catch (Exception e) {
      // 异常不做任何处理
      return true;
    }
    return false;
  }

}
