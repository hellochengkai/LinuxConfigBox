#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    # URL=https://storage.googleapis.com/shellcheck/shellcheck-stable.linux.x86_64.tar.xz
    # FILE=`basename $URL`

    # which shellcheck > /dev/null
    # if [[  $? == 0  ]];then
    #     return
    # fi
    # if [[ ! -e $PWD/$FILE ]];then
    #     wget $URL
    # fi

    # tar xf $PWD/$FILE -C $PWD
    # rm $PWD/$FILE
    return
}

install
