@echo off
cd /d "%~dp0" 
java -version 2>a.txt 
type a.txt | find "1.7" >b.txt || echo need jdk 1.7 and above
del a.txt
del b.txt
cd libs
start javaw -jar SmaliViewer.jar -xmx1024m