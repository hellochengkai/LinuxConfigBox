#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    if [[  ! -d $HOME/.bash-git-prompt/  ]];then
        git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
    fi
    return
}

install
