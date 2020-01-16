#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    which nvim
    if [[  $? == 0  ]];then
        alias vim='nvim'
        return
    fi

    if [[  ! -d $HOME/.SpaceVim.d/  ]];then
        mkdir $HOME/.SpaceVim.d/
    fi
    cp SpaceVim.d/init.toml $HOME/.SpaceVim.d/
    return
}

config