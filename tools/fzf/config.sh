#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh
config()
{
    if [[  $SHELL == "/bin/bash"  ]];then
        [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    fi

    if [[  $SHELL == "/bin/zsh"  ]];then
        [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    fi

    alias fzf='fzf --height 40%'
    return
}

config