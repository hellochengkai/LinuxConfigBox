#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    sudo_install_cmd tmux
    return
}

install