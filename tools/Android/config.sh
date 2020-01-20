#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    export ANDROID_HOME=$HOME/Tools/Android/

    export NDK_HOME=$ANDROID_HOME/android-ndk-r14b/
    export SDK_HOME=$ANDROID_HOME/android-sdk-linux/
    export AS_HOME=$ANDROID_HOME/android-studio/

    add_path $NDK_HOME/
    add_path $SDK_HOME/platform-tools
    add_path $AS_HOME/bin
    return
}

config