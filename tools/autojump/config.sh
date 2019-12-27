#!/bin/bash
# shellcheck source=../../func/func.sh
. "$LinuxConfigBoxPath/func/func.sh"

config()
{
    add_path "$LinuxConfigBoxPath/tools/autojump/OUT/bin"
    alias j='autojump'  
    # if [[  $SHELL == "/bin/bash"  ]];then
    #     run_shell "$LinuxConfigBoxPath/tools/autojump/OUT/share/autojump/autojump.bash"
    # fi
    
    # if [[  $SHELL == "/bin/zsh"  ]];then
    #     run_shell "$LinuxConfigBoxPath/tools/autojump/OUT/share/autojump/autojump.zsh"
    # fi
}

config