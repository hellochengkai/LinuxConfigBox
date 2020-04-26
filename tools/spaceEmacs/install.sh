#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    which emacs > /dev/null
    if [[  $? != 0  ]];then
        pwd = $PWD
        cd /tmp/
        wget http://mirrors.ustc.edu.cn/gnu/emacs/emacs-26.3.tar.gz
        tar xvf emacs-26.3.tar.gz
        cd emacs-26.3
        ./configure --without-x
        make -j4;
        sudo_do_cmd "make install"
        rm emacs-26.3* -rfv
        cd $pwd
    fi

    if [[  ! -d ~/.emacs.d  ]];then
        git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    else
        cd ~/.emacs.d
        git checkout develop
        git pull
        cd -
    fi

    rm  ~/.spacemacs
    if [[  ! -d ~/.spacemacs.d  ]];then
        git clone git@github.com:hellochengkai/hellospacemacs.git  ~/.spacemacs.d
    else
        cd ~/.spacemacs.d
        git pull
        cd -
    fi
    
    
    return
}

#install