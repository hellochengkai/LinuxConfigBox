#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    # 可以加入想要安装的软件
    cmd_list=(
        trash-cli
        git
        subversion
        python-pip
        htop
        tree
        minicom
        zsh
        neofetch
        wget
        curl
        ctags
        cscope
        clang
        cmake
        mplayer
        com.oray.sunlogin.client
        cn.teamviewer.teamviewer)

    for i in ${cmd_list[@]}; do
        sudo_install_cmd $i
    done
    return
}

install
