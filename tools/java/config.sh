#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    export JAVA_HOME=$HOME/bin/jdk1.8.0_241
    export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
    export PATH=$PATH:$JAVA_HOME/bin
    return
}

config