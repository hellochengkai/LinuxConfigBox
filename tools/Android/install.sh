#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    ANDROID_PATH = $HOME/Tools/Android/
    make_dir ${ANDROID_PATH}
    tar xvf /media/chengkai/DATA/Deepin/Tools/android/android-ndk-r14b-linux.tar.gz -C ${ANDROID_PATH}
    tar xvf /media/chengkai/DATA/Deepin/Tools/android/android-studio-ide-192.6241897-linux.tar.gz -C ${ANDROID_PATH}
    tar xvf /media/chengkai/DATA/Deepin/Tools/android/android-sdk_r24.4.1-linux.tgz -C ${ANDROID_PATH}
    return
}

install
