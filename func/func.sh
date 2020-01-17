#!/bin/bash

write_line()
{
    grep "$1" $2 > /dev/null
    if [[ $? == 1 ]];then
        # echo >> $2
        # echo $1 >> $2
        sed -i '$a\'"$1" $2
    fi
}

copy_file()
{
    if [[  ! -e $2  ]];then
        cp $1 $2
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

alias_cmd()
{
    #空格分割字符串 参考 string="hello,shell,split,test";array=(${string//,/ })
    array=(${2// / })
    # echo ${array[0]}

    which ${array[0]} > /dev/null
    if [[  $? == 0  ]];then
        alias $1="$2"
    fi
}

make_dir()
{
    if [[  ! -d $1  ]];then
        mkdir -p $1
    fi
}
wget_file()
{
    file_name=basename $2
    if [[  ! -f "$1/$file_name" ]] ; then
        wget -p $1 $2
    fi
}
#----sudo func-------------------

sudo_install_cmd()
{
    which $1 > /dev/null
    if [[  $? != 0  ]];then
        sudo apt-get install $1
    fi
}

sudo_write_line()
{
    grep "$1" $2 > /dev/null
    if [[ $? == 1 ]];then
        sudo sed -i '$a\'"$1" $2
    fi
}

sudo_copy_file()
{
    if [[  ! -e $2  ]];then
        sudo cp $1 $2
    fi
}

sudo_make_dir()
{
    if [[  ! -d $1  ]];then
        sudo mkdir -p $1
    fi
}

sudo_do_cmd(){
    sudo $1
}