#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    URL=https://storage.googleapis.com/shellcheck/shellcheck-stable.linux.x86_64.tar.xz
    FILE=`basename $URL`
    
    which shellcheck
    if [[  $? == 0  ]];then
        return
    fi
    # 可以加入想要安装的软件
    if [[ ! -e $PWD/$FILE ]];then
        wget $URL
    fi
    
    tar xf $PWD/$FILE -C $PWD
    rm $PWD/$FILE
    return
}

install
