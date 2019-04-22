@echo off
set path0=%~dp0bin\dex2jar\d2j-dex2jar.bat
echo 请输入工程名：
set /p input=
set path1=%~dp0projects\%input%\ProjectSrc\
set jarpath="%path1%classes-jar2dex.jar"
call %path0% "%path1%classes.dex" -o %jarpath% --force
set unzip=%~dp07za.exe
set out="%path1%smali\"
%unzip% x %jarpath% -o%out%
pause
