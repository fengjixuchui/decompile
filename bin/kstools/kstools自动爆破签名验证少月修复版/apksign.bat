cd %~dp0
java -Xmx1024m -XX:-UseParallelGC -XX:MinHeapFreeRatio=15 -jar kstools.jar ++sign %~n1
pause