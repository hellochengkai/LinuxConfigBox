#!/bin/bash
. $LinuxConfigBoxPath/shell/tools.sh
set_alias()
{
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias l='ls -CF'
    alias la='ls -AF'
    alias ll='ls -alh'
    alias ls='ls --color=auto'
    alias cman='man -M /usr/share/man/zh_CN'
    alias rm='trash-put'
    alias reboot='echo null'
    alias reboot_X='reboot'
    alias cdb='cd ../'
    alias em='emacs -nw' 
}


ipaddr=`ifconfig wlo1|grep inet|grep -v 127.0.0.1|grep -v inet6 | awk '{print $2}' | tr -d "addr:"`

set_alias
set_fzf
set_autojump