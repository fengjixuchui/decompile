#!/bin/bash

# 多行注释放可执行语句，会自觉执行。
#: << !
#!

#这种多行注释 可以写东西
<<'COMMENT'
    文件夹中的文件内容替换
    用户键入三个参数
        sh  replacePkgName.sh  完整路径的文件夹  被替换包名  替换后的包名
    具体实现
        mac 例子 :
            sed -i "" "s/com\/operassd\/shipgame/cn\/test/g" `find xx.apk-0 -name "*.smali"|xargs grep "com\/operassd\/shipgame" -rl`
            sed -i "" "s/cn.test/cn.test/g" `find xx.apk-0 -name "*.smali"|xargs grep "cn.test" -rl`
        Linux 例子:
            sed -i 's/GSSAPIAuthentication yes/GSSAPIAuthentication no/' /etc/ssh/sshd_config
        总体格式:
            sed -i "" "s/替换内容/替换后内容/g" `find 文件夹名字 -name "*.文件结尾"|xargs grep "替换内容" -rl`
COMMENT

## 获取替换的名字
# 使用方法示例
#pkg="com.operassd.shipgame"
#echo "==>$(replaceName $pkg)"
function replaceName()
{
    name=""
    if  [ $# == 1 ]; then
        pkg=$1
        array=(${pkg//./ }) 
        i=0
        len="${#array[@]}"
        while [ $i -lt $len ]; do
            #echo " $i -----> ${array[$i]}  ----$name"
            if [ `expr $i + 1` -eq $[$len] ]; then
                #echo "aaa $name"
                name="${name}${array[$i]}"
            else
                #echo "bbb $name"
                name="${name}${array[$i]}\/"
            fi
            let i++  
        done
    fi
    echo "$name"
}



# 可执行平台判断
# 使用方法示例
### 打印方法 需要把方法放到括号里
#os=$(osType)
#echo $os
#if [ "Mac" == "$os" ]; then
#    echo "您使用的是mac系统"
#elif [ "Linux" == "$os" ]; then
#    echo "您使用的是Linux系统"
#else
#    echo "您使用的是其他系统,即将使用"
#fi
function osType()
{
    os_type=$(uname)
    isMsys=$(echo $os_type | grep "Msys")
    isCygwin=$(echo $os_type | grep "Cygwin")
    isLinux=$(echo $os_type | grep "Linux")
    isMac=$(echo $os_type | grep "Darwin")
    if [ "$isMac" != "" ]; then
        echo "Mac"
    elif [ "$isLinux" != "" ]; then
        echo "Linux"
    elif [ "$Cygwin" != "" ]; then
        echo "Linux"
    elif [ "$isMsys" != "" ]; then
        echo "Linux"
    else
        echo "Other"
    fi
}

#  程序入口,使用方法:
#   sh  replacePkgName.sh apk/build  com.operassd.shipgame  cn.test
if [ $# != 3 ]; then
    echo "E. 参数不对. 正确使用方法: sh $0  待操作文件夹名称  待替换包名  替换后的包名"
else
#    osprocess $2 $3
    dir="$1"
    srcpkg="$2"
    deskpkg="$3"
    # 1. 替换字符串结束
    src=$(replaceName $srcpkg)
    desk=$(replaceName $deskpkg)
    os=$(osType)
    echo $os
    if [ "Mac" == "$os" ]; then
        echo "您使用的是mac系统"
#        echo "sed -i "" "s/$src/$desk/g" `find $dir -name "*.smali"|xargs grep "$src" -rl`"
        sed -i "" "s/$src/$desk/g" `find $dir -name "*.smali"|xargs grep "$src" -rl`
        if [ $? -eq 0 ]; then
           echo "Mac. 替换smali字符串成功"
           sed -i "" "s/$srcpkg/$deskpkg/g" `find $dir -name "*.xml"|xargs grep "$srcpkg" -rl`
           if [ $? -eq 0 ]; then
               echo "Mac. 替换XML字符串成功"
           fi
        fi
    elif [ "Linux" == "$os" ]; then
        echo "您使用的是Linux系统"
        sed -i "s/$src/$desk/g" `find $dir -name "*.smali"|xargs grep "$src" -rl`
        if [ $? -eq 0 ]; then
           echo "Linux. 替换smali字符串成功"
           sed -i "s/$srcpkg/$deskpkg/g" `find $dir -name "*.xml"|xargs grep "$srcpkg" -rl`
           if [ $? -eq 0 ]; then
               echo "Linux. 替换XML字符串成功"
           fi
        fi
    else
        echo "您使用的是其他系统,即将使用"
    fi
    # 2. 调用Java程序替换文件夹
    java -Xmx4g  -cp  lib/app_service_0.0.1.jar  com.sanbo.service.ReplaceService "$dir" "$srcpkg" "$deskpkg"
    # 3. 删除临时文件. Java中已经实现
fi

