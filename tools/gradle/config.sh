#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    export GRADLE_HOME=$HOME/bin/gradle-6.1
    export PATH=$PATH:$GRADLE_HOME/bin
    return
}

config