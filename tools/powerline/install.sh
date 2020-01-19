#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    cmd_list=(
        python-pip
        git)

    for i in ${cmd_list[@]}; do
        sudo_install_cmd $i
    done
    
    sudo_copy_file "$LinuxConfigBoxPath/tools/powerline/res/10-powerline-symbols.conf" "/etc/fonts/conf.d/10-powerline-symbols.conf"
    sudo_copy_file "$LinuxConfigBoxPath/tools/powerline/res/PowerlineSymbols.otf" "/usr/share/fonts/PowerlineSymbols.otf"

    which powerline > /dev/null
    if [[  $? != 0  ]];then
        sudo_do_cmd "pip install git+git://github.com/Lokaltog/powerline"
        # wget_file $LinuxConfigBoxPath/tools/powerline/ https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
        # wget_file $LinuxConfigBoxPath/tools/powerline/ https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
       fc-cache -vf /usr/share/fonts/
    fi
    return
}

install
