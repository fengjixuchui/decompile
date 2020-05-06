#!/bin/bash

: << !
    打包生成未签名的APK
!

# 声明反编译软件版本
apktool="bin/apktool/apktool_2.4.1.jar"
ShakaApktool="bin/ShakaApktool/ShakaApktool_3.0.0.jar"

if  [ $# == 1 ]; then
    dir="$1"
    dir=${dir%/*}
    echo "build path: ${dir}"
    # delete sign of apk
    rm -rf "${dir}/original"
    fileName="${dir%.*}-R.apk"
    tmp="${apktool##*/}"
    version="${tmp%.*}"
    echo "${version} buid apk($#) [${dir}]==>[${fileName}]"
    java -jar -Duser.language=en  -Xmx512M -Dfile.encoding=UTF8  ${apktool}  -f  b ${dir}  -o ${fileName}
    if [ $? -ne 0 ]; then
        echo ""
        echo "E: ${version}  build failed! by $0. will try ShakaApktool build."
        echo " "
        java -jar -Duser.language=en  -Xmx512M -Dfile.encoding=UTF8  ${ShakaApktool}  -f  b ${dir}  -o ${fileName}
        tmp="${ShakaApktool##*/}"
        version="${tmp%.*}"
        echo "${version} buid apk($#) [${dir}]==>[${fileName}]"
        if [ $? -ne 0 ]; then
            echo "E: ${version}  build failed! by $0."
        else
            echo " "
            echo "I: ${version}  build success! by $0"
        fi
    else
        echo " "
        echo "I: ${version}  decompile success! by $0"
    fi
else
    echo "args length Error! please use Common: 'sh build.sh dirName'"
fi



