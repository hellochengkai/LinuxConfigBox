#!/bin/bash

write_line()
{
    grep "$1" $2
    if [[ $? == 1 ]];then
        echo >> $2
        echo "$1" >> $2
    fi
}

copy_file()
{
    cp $1 $2
    if [[  ! -e $2  ]];then
        cp $1 $2
    fi
}

install_cmd()
{
    which $1
    if [[  $? != 0  ]];then
        sudo apt-get install $1
    fi
}

run_shell_cd(){
    cur_path=$PWD
    if [[ -e $1 ]];then
        cd `dirname $1` || return
        source `basename $1`
    fi
    cd $cur_path
}

run_shell(){
    [[ -s $1 ]] && source $1
}

add_path()
{
    if [[ -d $1 ]];then
       export PATH="$1:$PATH"
    fi
}