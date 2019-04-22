package com.bailiangjin.signapktool;

import com.bailiangjin.javabaselib.utils.FileUtils;
import com.bailiangjin.javabaselib.utils.StringUtils;
import com.bailiangjin.javabaselib.utils.cmd.CmdUtils;

import java.io.File;

/**
 * 签名命令行
 * Created by bailiangjin on 16/6/24.
 */
public class SignCmdBean {

    //echo 000000 | jarsigner -verbose -keystore innerload.jks -signedjar apk_signed.apk apk_unsign.apk alias

    private String pwdPrefix="echo ";
    private String prefix="|jarsigner -verbose -keystore ";
    private String keyFilePath;
    private String middleString=" -signedjar ";
    private String signedApkPath;
    private String unsignedApkFilePath;
    private String alias;
    private String password;

    public SignCmdBean() {
    }

    /**
     *
     * @param password  签名密码
     * @param keyFilePath  签名文件路径
     * @param unsignedApkFilePath 未签名apk 文件路径
     * @param signedApkPath 签名后文件输出路径
     * @param alias 签名使用的Alias
     */
    public SignCmdBean(String password,String keyFilePath, String signedApkPath, String unsignedApkFilePath, String alias) {
        this.password = password;
        this.keyFilePath = keyFilePath;
        this.signedApkPath = signedApkPath;
        this.unsignedApkFilePath = unsignedApkFilePath;
        this.alias = alias;
    }

    public String getKeyFilePath() {
        return keyFilePath;
    }

    public void setKeyFilePath(String keyFilePath) {
        this.keyFilePath = keyFilePath;
    }

    public String getUnsignedApkFilePath() {
        return unsignedApkFilePath;
    }

    public void setUnsignedApkFilePath(String unsignedApkFilePath) {
        this.unsignedApkFilePath = unsignedApkFilePath;
    }

    public String getSignedApkPath() {
        return signedApkPath;
    }

    public void setSignedApkPath(String signedApkPath) {
        this.signedApkPath = signedApkPath;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String toCmd() {
        String signCmd=pwdPrefix+password+prefix+keyFilePath+middleString+signedApkPath+" "+ unsignedApkFilePath +" "+alias;
        if (StringUtils.isEmpty(password)||StringUtils.isEmpty(keyFilePath)|| StringUtils.isEmpty(keyFilePath)|| StringUtils.isEmpty(unsignedApkFilePath)|| StringUtils.isEmpty(signedApkPath)|| StringUtils.isEmpty(alias)){
            System.out.println("param uncompleted:"+signCmd);
            return null;
        }

        System.out.println("signCmd:"+signCmd);
        return signCmd;
    }

    public boolean deleteSign(){

        if (StringUtils.isEmpty(unsignedApkFilePath)){
            return false ;
        }
        File unSignedApkFile= new File(unsignedApkFilePath);
        if(!unSignedApkFile.exists()){
            return false;
        }
        try {
            String unzipFileSuperDir= FileUtils.getFolderName(unsignedApkFilePath);
            String apkNameNoExtension=FileUtils.getFileNameWithoutExtension(unsignedApkFilePath);
            String unzipFileDir=unzipFileSuperDir+File.separator+apkNameNoExtension;
            String newApkName=apkNameNoExtension+"_unSigned.apk";
            String newApkFilePath=unzipFileSuperDir+File.separator+newApkName;
            ZipUtils.unzip(unSignedApkFile.getAbsolutePath(), unzipFileDir,false);
            String signFolderDir=unzipFileDir +File.separator+"META-INF";
            File  signFileFolder=new File(signFolderDir);
            if (null==signFileFolder||!signFileFolder.exists()){
                //原apk文件为无签名apk 直接使用原文件
            }else{
                //删除签名目录
                FileUtils.deleteFile(signFolderDir);
                //压缩去签名的文件为 原文件加"_unSigned.apk"
                unsignedApkFilePath=ZipUtils.zip(unzipFileDir,newApkFilePath);
                //删除解压的dir
                FileUtils.deleteFile(unzipFileDir);
            }

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;

        }


    }

    /**
     * 执行签名
     */
    public void executeSign(){
        System.out.println("cmd:"+toCmd());
        if (null!=toCmd()){
            CmdUtils.runCmd(toCmd());
        }else {
            System.out.println("param not uncompleted:"+toCmd());
        }

    }
}
