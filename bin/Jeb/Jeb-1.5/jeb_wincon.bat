@echo off

echo "****************************************************"
echo "*   This JEB floating is cracked by colordancer.   *"
echo "*   Please use it ONLY for study purposes.         *"
echo "****************************************************"

rem Start-up script for JEB (Windows Console)

rem Prefer a JDK over a JRE, which allows support for JEB native Java plugins
if defined JAVA_HOME (set base="%JAVA_HOME%\bin") else (set base="%SystemRoot%\System32")
set JAVA=%base%\java.exe

set INSTALLER="%~dp0bin\jebi.jar"
set DECOMPILER="%~dp0bin\jeb.jar"

rem Note: Make sure your SWT build matches your Java build (32-bit or 64-bit)
rem If the Java path generation does not yield a correct result, manually set
rem the JAVA variable (defined above) to a correct value

if exist %JAVA% goto :checkdep
echo JEB requires a Java runtime environment, please install one.
exit /b -1

:checkdep
%JAVA% -jar %INSTALLER% --di
if errorlevel 0 goto :checkupdate
exit /b -1

:checkupdate
%JAVA% -jar %INSTALLER% --up
if errorlevel 0 goto :runjeb
exit /b -1

:runjeb
rem Allow the Java VM to allocate up to 2 Gb of memory
%JAVA% -Xmx2048m -XX:-UseParallelGC -XX:MinHeapFreeRatio=15 -jar %DECOMPILER% %*
exit 0