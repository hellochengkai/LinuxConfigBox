#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh
config()
{
    if [[  $SHELL == "/bin/bash"  ]];then
        run_shell ~/.fzf.bash
    fi

    if [[  $SHELL == "/bin/zsh"  ]];then
        run_shell ~/.fzf.zsh
    fi

    alias_cmd fzf 'fzf --height 40%'
    return
}

config