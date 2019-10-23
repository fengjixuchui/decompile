#!/bin/bash

: << !
    APK反编译。产物是smali文件
    三种使用方法:
        1. sh decode.sh [没带参数. 默认反编译apk/test.apk]
        2. sh decode.sh apk/xxx.apk  [携带一个参数. 反编译指定文件到文件名字加上"-O"的目录. eg: 前面例子解析到目录apk/xxx-O]
        3. sh decode.sh apk/xxx.apk..apk/xxxDirName [携带两个参数. 反编译指定文件到指定目录,第一个参数是反编译文件名称,第二个参数是反编译到的目录]
!

# 声明反编译软件版本
apktool="bin/apktool/apktool_2.4.0.jar"
ShakaApktool="bin/ShakaApktool/ShakaApktool_3.0.0.jar"

# 1.动态调整文件名称
file="apk/test.apk"
desk="apk/test-O"

if [ $# == 1 ]; then
    file="$1"
    desk="${file%.*}-O"
elif [ $# == 2 ]; then
    file="$1"
    desk="$2"
fi

#2. 反编译
echo " decompile($#) [${file}]==>[${desk}]"
java -jar -Duser.language=en  -Xmx512M -Dfile.encoding=UTF8  ${apktool}  -f  d ${file}  -o ${desk}

tmp="${apktool##*/}"
version="${tmp%.*}"
#3.根据反编译的结果,日志提示
if [ $? -ne 0 ]; then
    echo " "
    echo "E: ${version} decompile failed! by $0. will try ShakaApktool decompile."
    echo " "
    java -jar -Duser.language=en  -Xmx512M -Dfile.encoding=UTF8  ${ShakaApktool}  -f  d ${file}  -o ${desk}
    tmp="${ShakaApktool##*/}"
    version="${tmp%.*}"
    if [ $? -ne 0 ]; then
        echo "E: ${version}  decompile failed! by $0."
    else
        echo " "
        echo "I: ${version} decompile success! by $0"
    fi
else
    echo " "
    echo "I: ${version} decompile success! by $0"
fi

