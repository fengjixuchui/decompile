package com.bailiangjin.signapktool;


import com.bailiangjin.javaawtlib.callback.FilePathCallback;
import com.bailiangjin.javaawtlib.swing.DefaultValueJTextField;
import com.bailiangjin.javaawtlib.swing.FileChooseBtn;
import com.bailiangjin.javabaselib.utils.FileUtils;
import com.bailiangjin.javabaselib.utils.StringUtils;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;

/**
 * Created by bailiangjin on 16/6/25.
 */
public class SignApkMain extends JFrame {

    public static String password;
    public static String keyFilePath;
    public static String signedApkPath;
    public static String unsignedApkFilePath;
    public static String alias;

    public SignApkMain() {
    }

    public static void constructGUI() {
        JFrame.setDefaultLookAndFeelDecorated(true);
        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(3);
        frame.setBounds(400, 200, 600, 250);
        frame.setTitle("Android Apk签名工具——by bailiangjin");
        frame.setLayout(new GridLayout(6, 2));
        final ArrayList<DefaultValueJTextField> textFieldList = new ArrayList<DefaultValueJTextField>();
        final DefaultValueJTextField textField_unSignApk = new DefaultValueJTextField("未签名Apk文件路径", 1000);
        final DefaultValueJTextField textField_keyStore = new DefaultValueJTextField("签名key路径", 1000);
        final DefaultValueJTextField textField_signed = new DefaultValueJTextField("签名后Apk输出路径", 1000);
        FileChooseBtn btn1 = new FileChooseBtn("点击选择未签名Apk文件", new FilePathCallback() {
            public void onFileSelected(String filePath) {
                System.out.println("未签名Apk文件:" + filePath);
                textField_unSignApk.setText(filePath);
            }
        });
        FileChooseBtn btn2 = new FileChooseBtn("点击选择签名文件", new FilePathCallback() {
            public void onFileSelected(String filePath) {
                System.out.println("签名文件:" + filePath);
                textField_keyStore.setText(filePath);
            }
        });
        FileChooseBtn btn3 = new FileChooseBtn("点击选择签名后Apk输出路径", new FilePathCallback() {
            public void onFileSelected(String filePath) {
                System.out.println("签名后Apk输出路径:" + filePath);
                textField_signed.setText(filePath);
            }
        });
        JLabel label1 = new JLabel("Alias:", 0);
        JLabel label2 = new JLabel("password:", 0);
        final DefaultValueJTextField textField_alias = new DefaultValueJTextField("请输入Alias", 1000);
        final JPasswordField passwordField = new JPasswordField();
        final JButton btn_cancel = new JButton("取消");
        final JButton btn_sign = new JButton("执行签名");
        ActionListener actionListener = new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                if (actionEvent.getSource() == btn_cancel) {
                    System.exit(0);
                }

                if (actionEvent.getSource() == btn_sign) {
                    boolean isComplete = true;
                    StringBuffer sb = new StringBuffer();
                    sb.append("<html><body>");

                    for (DefaultValueJTextField textField : textFieldList) {
                        if (textField.isDefaultValue()) {
                            String notice = textField.getDefaultValue() + ":未设置值" + "<br>";
                            sb.append(notice);
                            isComplete = false;
                        }
                    }

                    if (StringUtils.isEmpty(passwordField.getText())) {
                        sb.append("密码:未设置");
                        isComplete = false;
                    }
                    sb.append("</body></html>");
                    if (!isComplete) {
                        final JDialog noticeDialog = new JDialog(frame, "提示");
                        noticeDialog.setBounds(100, 100, 200, 200);
                        JLabel labelContent1 = new JLabel("", 0);
                        labelContent1.setText(sb.toString());
                        noticeDialog.add(labelContent1);
                        JButton btnConfirm = new JButton("确定");
                        btnConfirm.addActionListener(new ActionListener() {
                            public void actionPerformed(ActionEvent e) {
                                noticeDialog.hide();
                            }
                        });
                        JPanel pan = new JPanel();
                        pan.setLayout(new FlowLayout());
                        pan.add(labelContent1);
                        pan.add(btnConfirm);
                        noticeDialog.add(pan);
                        noticeDialog.show();
                    } else {
                        password = passwordField.getText();
                        keyFilePath = textField_keyStore.getText();
                        unsignedApkFilePath = textField_unSignApk.getText();
                        signedApkPath = textField_signed.getText() + File.separator + FileUtils.getFileNameWithoutExtension(unsignedApkFilePath)+"_signed.apk";
                        alias = textField_alias.getText();
                        SignCmdBean signCmdBean = new SignCmdBean(password, keyFilePath, signedApkPath, unsignedApkFilePath, alias);
                        boolean deleteSuccess=signCmdBean.deleteSign();
                        if(deleteSuccess){
                            //执行签名命令
                            signCmdBean.executeSign();
                        }
                        // 退出 关闭窗口界面
                        System.exit(0);
                    }
                }

            }
        };
        textFieldList.add(textField_unSignApk);
        textFieldList.add(textField_keyStore);
        textFieldList.add(textField_signed);
        textFieldList.add(textField_alias);
        btn_cancel.addActionListener(actionListener);
        btn_sign.addActionListener(actionListener);
        frame.add(textField_unSignApk);
        frame.add(btn1);
        frame.add(textField_keyStore);
        frame.add(btn2);
        frame.add(textField_signed);
        frame.add(btn3);
        frame.add(label1);
        frame.add(textField_alias);
        frame.add(label2);
        frame.add(passwordField);
        frame.add(btn_cancel);
        frame.add(btn_sign);
        frame.setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                SignApkMain.constructGUI();
            }
        });
    }
}

