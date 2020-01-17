#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    cmd_list=(
        vim
        neovim
        # vim-scripts
        # python-neovim
        # python3-neovim
        )

    for i in ${cmd_list[@]}; do
        sudo_install_cmd $i
    done

    curl -sLf https://spacevim.org/cn/install.sh > /tmp/spaceVim_install.sh
    chmod +x /tmp/spaceVim_install.sh
    which nvim > /dev/null
    if [[  $? == 0  ]];then
        cd /tmp/
        ./spaceVim_install.sh --uninstall vim
        ./spaceVim_install.sh --install neovim
        cd -
        return
    fi
    which vim > /dev/null
    if [[  $? == 0  ]];then
        cd /tmp/
        ./spaceVim_install.sh --uninstall neovim
        ./spaceVim_install.sh --install vim
        cd -
        return
    fi
    return
}

install
