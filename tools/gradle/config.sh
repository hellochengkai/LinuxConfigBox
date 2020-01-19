#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    export GRADLE_USER_HOME=$HOME/Tools/Gradle/gradle-6.1
    add_path $GRADLE_USER_HOME/bin
    return
}

config