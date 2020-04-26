#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    which typora > /dev/null
    if [[  $? == 0  ]];then
        return
    fi
    sudo_do_cmd "apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE"
    sudo_write_line "deb https://typora.io/linux ./" /etc/apt/sources.list
    sudo_do_cmd "apt-get update"
    sudo_install_cmd typora
    return
}

install
