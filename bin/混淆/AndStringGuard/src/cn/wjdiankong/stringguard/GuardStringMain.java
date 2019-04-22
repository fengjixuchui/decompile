package cn.wjdiankong.stringguard;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Opcodes;

/**
 * 面临两个问题：
 * 第一个问题：final修饰符的字段，可以重新设置加密的值，但是原始值无法剔除
 * 第二个问题：因为在初始化方法init进行字段赋值操作，但是无法知道类调用哪一个初始化方法，所以就在每个初始化方法中都执行赋值
 */
public class GuardStringMain {

  private final static String FILENAME_PREFIX = "string_guard_";
  private final static String ERROR_FILE = "guard_error.txt";
  private static List<String> errorFileList = new ArrayList<String>();
  public static boolean isDebug = true;
  private static String rootDir;

  public static void main(String[] args) throws StringGuardException {

    if (args.length < 2) {
      throw new StringGuardException("args error!!!    eg:string_guard.jar [classDir] [keep config file]");
    }

    File dir = new File(args[0]);
    if (!dir.exists()) {
      throw new StringGuardException("class dir is not exist!");
    }
    rootDir = args[0];

    File keepConfigFile = new File(args[1]);
    if (!keepConfigFile.exists()) {
      throw new StringGuardException("keep config file is not exist!");
    }

    KeepStringGuard.initKeepList(keepConfigFile.getAbsolutePath());
    if (!KeepStringGuard.isValid()) {
      throw new StringGuardException("read keep file error!");
    }

    traverse(dir);

    String errorFile = keepConfigFile.getParentFile().getAbsolutePath() + ERROR_FILE;
    StringGuardUtils.writeFileLine(errorFileList, errorFile);
    errorFileList.clear();

  }

  private static void traverse(File dirFile) {
    File[] fs = dirFile.listFiles();
    for (File file : fs) {
      if (file.isDirectory()) {  //若是目录，则递归打印该目录下的文件
        traverse(file);
      }
      if (file.isFile()) { //若是文件，直接操作
        stringGuard(file);
      }
    }
  }

  /**
   * 加密类文件的字符串
   *
   * @param classFile
   */
  private static boolean stringGuard(File classFile) {
    if (!classFile.exists()) {
      return false;
    }

    String className = StringGuardUtils.pathToClassName(rootDir, classFile.getAbsolutePath());

    if (KeepStringGuard.isKeep(className)) {
      return false;
    }

    if (isDebug) {
      System.out.println(className);
    }

    try {
      ClassReader cr = new ClassReader(new FileInputStream(classFile));
      ClassWriter cw = new ClassWriter(cr, ClassWriter.COMPUTE_MAXS);
      ClassVisitor cv = new GuardClassVisitor(cw);
      cr.accept(cv, Opcodes.ASM4);
      String classFileName = StringGuardUtils.getFileName(classFile.getAbsolutePath());
      String classFilePath = StringGuardUtils.getFilePath(classFile.getAbsolutePath());
      String newFileName = classFilePath + File.separator + FILENAME_PREFIX + classFileName;
      File newFile = new File(newFileName);
      boolean isSucc = StringGuardUtils.saveFileData(newFile, cw.toByteArray());
      if (isSucc) {
        //删除原始类文件，修改新文件为原始文件
        if (classFile.delete()) {
          newFile.renameTo(classFile);
        }
      }
      ClassConst.guardFinalStaticFieldMaps.clear();
      ClassConst.guardFinalFiedlMaps.clear();
      return true;
    } catch (Exception e) {
      errorFileList.add(className);
      if (isDebug) {
        System.out.println(e.toString() + System.lineSeparator() + StringGuardUtils.printTrace(e));
      }
    }
    return false;
  }

}
