#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    if [[  ! -d $HOME/Tools/Gradle/gradle-6.1  ]];then
        make_dir $HOME/Tools/Gradle/
        cd $HOME/Tools/Gradle/
        wget https://downloads.gradle-dn.com/distributions/gradle-6.1-bin.zip
        unzip gradle-6.1-bin.zip
        rm gradle-6.1-bin.zip
        cd -
    fi
    return
}

install
