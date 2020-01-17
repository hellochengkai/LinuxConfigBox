#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    sudo_write_line "192.30.253.118 gist.github.com" "/etc/hosts"
    return
}

install
