#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    JDK_PATH=$HOME/Tools/JDK/
    if [[  ! -d $JDK_PATH  ]];then
        make_dir ${JDK_PATH}
        tar xvf /media/chengkai/DATA/Deepin/Tools/jdk/jdk-8u241-linux-x64.tar.gz -C ${JDK_PATH}
    fi
    # see readme.md
    return
}

install
