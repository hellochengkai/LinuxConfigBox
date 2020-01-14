#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    # 可以加入想要安装的软件
    cmd_list=(
        htop
        tree
        zsh)

    for i in ${cmd_list[@]}; do
        install_cmd $i
    done
    return
}

install
