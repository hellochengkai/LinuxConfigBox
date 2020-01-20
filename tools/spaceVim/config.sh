#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    which nvim > /dev/null
    if [[  $? == 0  ]];then
        alias_cmd nv 'nvim'
        return
    fi

    make_dir $HOME/.SpaceVim.d/
    copy_file SpaceVim.d/init.toml $HOME/.SpaceVim.d/
    return
}

config