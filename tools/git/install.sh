#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    cmd_list=(
        git
        tig)

    for i in ${cmd_list[@]}; do
        install_cmd $i
    done
    
    copy_file $PWD/gitconfig $HOME/.gitconfig
    return
}

install