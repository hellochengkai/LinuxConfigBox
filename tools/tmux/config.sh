#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    alias_cmd tmux 'tmux -f $LinuxConfigBoxPath/tools/tmux/tmux.conf'
    return
}

config