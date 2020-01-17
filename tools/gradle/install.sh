#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    if [[  ! -d $HOME/bin/gradle-6.1-bin/  ]];then
        cd $HOME/bin/
        wget https://downloads.gradle-dn.com/distributions/gradle-6.1-bin.zip
        unzip gradle-6.1-bin.zip
        rm gradle-6.1-bin.zip
        cd -
    fi
    return
}

install
