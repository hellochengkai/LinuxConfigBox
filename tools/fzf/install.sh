#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    if [[  ! -d $HOME/.fzf  ]];then
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    fi
    which fzf > /dev/null
    if [[  $? != 0  ]];then
        source ~/.fzf/install --key-bindings --completion --no-update-rc
    fi
}

install