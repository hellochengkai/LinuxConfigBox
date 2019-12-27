#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install_tools()
{
    tools_list=$(find $PWD/tools/ -name "install.sh")
    for i in ${tools_list[@]}; do
        if [[  -f $i  ]];then
            if [[  -x $i  ]];then
                chmod +x "$i"
            fi
            echo "install $i"
            run_shell_cd "$i"
        fi
    done
    return
}

install_tools
