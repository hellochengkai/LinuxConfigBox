#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

set_alias()
{
    alias_cmd 'egrep' 'egrep --color=auto'
    alias_cmd 'fgrep' 'fgrep --color=auto'
    alias_cmd 'grep' 'grep --color=auto'
    alias_cmd 'l' 'ls -CF'
    alias_cmd 'la' 'ls -AF'
    alias_cmd 'll' 'ls -alh'
    alias_cmd 'ls' 'ls --color=auto'
    alias_cmd 'cman' 'man -M /usr/share/man/zh_CN'
    alias_cmd 'rm' 'trash-put'
    alias_cmd 'reboot' 'echo null'
    alias_cmd 'reboot_X' 'reboot'
    alias_cmd 'cdb' 'cd ../'
    alias_cmd 'em' 'emacs -nw'
}

set_ipaddr()
{
    export ipaddr=`ifconfig $1|grep inet|grep -v 127.0.0.1|grep -v inet6 | awk '{print $2}' | tr -d "addr:"`
}

set_alias

set_ipaddr $ifdev

export PATH=$HOME/bin:$PATH