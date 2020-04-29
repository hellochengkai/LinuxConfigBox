#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    ANDROID_PATH=$HOME/Tools/Android/

    export NDK_HOME=${ANDROID_PATH}/android-ndk-r14b/
    export SDK_HOME=${ANDROID_PATH}/android-sdk-linux/
    export AS_HOME=${ANDROID_PATH}/android-studio/

    add_path $NDK_HOME/
    add_path $SDK_HOME/platform-tools
    add_path $AS_HOME/bin
    return
}

config