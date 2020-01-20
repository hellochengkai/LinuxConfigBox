#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    cmd_list=(
        vim
        # neovim
        # vim-scripts
        # python-neovim
        # python3-neovim
        )

    for i in ${cmd_list[@]}; do
        sudo_install_cmd $i
    done

    which nvim > /dev/null
    if [[  $? != 0  ]];then
        cp nvim-linux64.tar.gz /tmp/
        cd /tmp/
        tar xvf nvim-linux64.tar.gz
        sudo_copy_file nvim-linux64/bin/nvim /bin/nvim
        sudo_do_cmd "cp nvim-linux64/share/* /share/ -rfv"
        rm nvim-linux64/ -rfv
        cd -
    fi
    # copy_file nvim $HOME/Tools/bin/nvim

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
    # which vim > /dev/null
    # if [[  $? == 0  ]];then
    #     cd /tmp/
    #     ./spaceVim_install.sh --uninstall neovim
    #     ./spaceVim_install.sh --install vim
    #     cd -
    #     return
    # fi
    # return
}

install
