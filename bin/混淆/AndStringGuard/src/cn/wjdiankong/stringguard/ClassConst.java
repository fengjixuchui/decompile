package cn.wjdiankong.stringguard;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class ClassConst {

  public final static String NATIVE_ENCRYPT =
      NativeStringGuard.class.getCanonicalName().replace(".", File.separator);
  public final static String DECRYPT_METHOD_NAME = "decryptStr";
  public final static String DECRYPT_METHOD_SIGN = "(Ljava/lang/String;)Ljava/lang/String;";
  public static Map<String, GuardField> guardFinalStaticFieldMaps = new HashMap<>();
  public static Map<String, GuardField> guardFinalFiedlMaps = new HashMap<>();

}
