#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config()
{
    alias tmux='tmux -f $LinuxConfigBoxPath/tools/tmux/tmux.conf'
    return
}

config