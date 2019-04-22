#!/bin/bash

: << !
    APK签名软件
!

# 声明签名软件
signapk_jar="bin/signapk/signapk.jar"
signapk_pk8="bin/signapk/platform.pk8"
signapk_pem="bin/signapk/platform.x509.pem"

if  [ $# == 1 ]; then
    apk="$1"
    fullname="${apk%.*}-signapk.apk"
    echo "begin sign apk..."
    java -jar -Duser.language=en  -Xmx512M -Dfile.encoding=UTF8  ${signapk_jar}  ${signapk_pem}  ${signapk_pk8}  ${apk}  ${fullname}
    if [ $? -ne 0 ]; then
        echo "E: signapk failed! by $0."
    else
        echo " "
        echo "I: signapk success! by $0"
    fi
elif [ $# == 2 ]; then
    apk="$1"
    fullname="$2"
    echo "begin sign apk..."
    java -jar -Duser.language=en  -Xmx512M -Dfile.encoding=UTF8  ${signapk_jar}  ${signapk_pem}  ${signapk_pk8}  ${apk}  ${fullname}
    if [ $? -ne 0 ]; then
        echo "E: signapk failed! by $0."
    else
        echo " "
        echo "I: signapk success! by $0"
    fi
else
    echo "args length Error! please use Common: 'sh signapk.sh apkName'"
fi