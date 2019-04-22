cd %~dp0
set aapt_path=D:\android-sdk\build-tools\19.1.0\aapt.exe
java -Xmx1024m -XX:-UseParallelGC -XX:MinHeapFreeRatio=15 -jar kstools.jar ++hook %~dp0 src.apk %aapt_path% 1338303158

pause..
