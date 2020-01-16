#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    which autojump > /dev/null
    if [[  $? == 0  ]];then
        return
    fi
    if [[  ! -d $HOME/.autojump  ]];then
        git clone git://github.com/wting/autojump.git /tmp/autojump
        cd /tmp/autojump
        ./install.py
        cd -
    fi
    return
}
install
