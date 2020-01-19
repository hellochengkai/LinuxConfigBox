#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    # export JAVA_HOME=$HOME/bin/jdk1.8.0_241
    # export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH
    # export PATH=$PATH:$JAVA_HOME/bin
    #for jdk
    export JAVA_HOME=$HOME/Tools/JDK/jdk1.8.0_241
    export JRE_HOME=${JAVA_HOME}/jre
    export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib:$CLASSPATH
    add_path $JAVA_PATH/bin
    add_path ${JRE_HOME}/bin
    return
}

config