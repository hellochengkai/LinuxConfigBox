#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

config_tools()
{
    config_list=$(find $LinuxConfigBoxPath/tools/ -name "config.sh")
    for i in ${config_list[@]}; do
        if [[  -f $i  ]];then
            if [[  -x $i  ]];then
                chmod +x "$i"
            fi
            echo "config $i"
            run_shell_cd "$i"
        fi
    done
    return
}

config_tools