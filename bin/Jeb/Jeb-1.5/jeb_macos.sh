#!/bin/bash
echo "****************************************************"
echo "*   This JEB floating is cracked by colordancer.   *"
echo "*   Please use it ONLY for study purposes.         *"
echo "****************************************************"

# Start-up script for JEB (MacOS)

# Prefer a JDK over a JRE, which allows support for JEB native Java plugins
if [ -z "$JAVA_HOME" ]; then
  JAVA=`which java`
else
  JAVA=$JAVA_HOME/bin/java
fi

# Note: Make sure your SWT build matches your Java build (32-bit or 64-bit)
# If the Java path generation does not yield a correct result, manually set
# the JAVA variable (defined above) to a correct value

if [ ! -f "$JAVA" ]; then
  echo "JEB requires a Java runtime environment, please install one."
  exit -1
fi

cd `dirname $0`
SCRIPTDIR=`pwd`
cd - >/dev/null

INSTALLER=$SCRIPTDIR/bin/jebi.jar
DECOMPILER=$SCRIPTDIR/bin/jeb.jar

$JAVA -jar $INSTALLER --di
RETCODE=$?
if [ $RETCODE -lt 0 ]; then
    exit $RETCODE
fi

$JAVA -jar $INSTALLER --up
RETCODE=$?
if [ $RETCODE -lt 0 ]; then
    exit $RETCODE
fi

JEBPATH=$SCRIPTDIR/bin/jeb.jar

# Allow the Java VM to allocate up to 2 Gb of memory
$JAVA -Xmx2048m -XX:-UseParallelGC -XX:MinHeapFreeRatio=15 -XX:MaxHeapFreeRatio=30 -jar $DECOMPILER "$@"
