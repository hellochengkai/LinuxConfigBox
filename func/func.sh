#!/bin/bash

write_line()
{
    grep "$1" $2
    if [[ $? == 1 ]];then
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