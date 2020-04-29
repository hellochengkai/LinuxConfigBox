#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    ANDROID_TOOLS_PATH=/media/chengkai/DATA/Deepin/Tools/android/

    ANDROID_PATH=$HOME/Tools/Android/
    make_dir ${ANDROID_PATH}
    if [[  ! -d $ANDROID_PATH/android-ndk-r14b  ]];then
        tar xvf $ANDROID_TOOLS_PATH/android-ndk-r14b-linux.tar.gz -C ${ANDROID_PATH}
    fi
    if [[  ! -d $ANDROID_PATH/android-sdk-linux  ]];then
        tar xvf $ANDROID_TOOLS_PATH/android-sdk_r24.4.1-linux.tgz -C ${ANDROID_PATH}
        #sudo ./make_standalone_toolchain.py --arch=arm --api=19 --install-dir=/opt/toolchains/android-toolchain/ --force
    fi
    if [[  ! -d $ANDROID_PATH/android-studio  ]];then
        tar xvf $ANDROID_TOOLS_PATH/android-studio-ide-192.6241897-linux.tar.gz -C ${ANDROID_PATH}
    fi
    #sudo ./make_standalone_toolchain.py --arch=arm --api=19 --install-dir=/opt/toolchains/android-toolchain/ --force
    return
}

install
