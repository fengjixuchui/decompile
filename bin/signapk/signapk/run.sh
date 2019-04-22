#!/bin/bash

length=${#1}
let "length-=8"

echo $length
apk_name=$1
out_apk_base=${apk_name:4:length}
out_apk_name=out/${out_apk_base}_signed.apk
echo "java -jar signapk.jar platform.x509.pem platform.pk8 $apk_name $out_apk_name"
$(echo "java -jar signapk.jar platform.x509.pem platform.pk8 $apk_name $out_apk_name")

