#!/bin/bash
. $PWD/func/func.sh

write_config(){
    write_file="$HOME/.$1rc"
    if [ -f "$write_file" ]; then
        write_line "#add by ck" $write_file
        write_line "export ifdev=wlo1" $write_file
        write_line "export LinuxConfigBoxPath=$PWD" $write_file
        write_line 'source $LinuxConfigBoxPath/shell/'"$1.sh" $write_file
    fi
    return
}

export LinuxConfigBoxPath="$PWD"
write_config bash
write_config zsh

run_shell $PWD/tools/installTools.sh
