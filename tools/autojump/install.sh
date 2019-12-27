#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    which autojump
    if [[  $? == 0  ]];then
        return
    fi
    if [[  ! -d $PWD/autojump  ]];then
        git clone git://github.com/wting/autojump.git $PWD/autojump 
        cd autojump
        ./install.py -d ../OUT
        cd ..
    fi
    return
}
install
