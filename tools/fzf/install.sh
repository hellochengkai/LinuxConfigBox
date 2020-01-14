#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    which fzf
    if [[  $? == 0  ]];then
        return
    fi
    if [[  ! -d $HOME/.fzf  ]];then
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        source ~/.fzf/install --key-bindings --completion --no-update-rc
    fi
}

install