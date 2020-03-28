#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    JDK_PATH = $HOME/Tools/JDK/
    make_dir ${JDK_PATH}
    tar xvf /media/chengkai/DATA/Deepin/Tools/jdk/jdk-8u241-linux-x64.tar -C ${JDK_PATH}
    # see readme.md
    return
}

install
