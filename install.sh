#!/bin/bash

. $PWD/func/func.sh

bash_config(){
    write_line "export LinuxConfigBoxPath=$PWD" $HOME/.bashrc
    write_line "export SHELL=/bin/bash" $HOME/.bashrc
    write_line "source $PWD/shell/bash.sh" $HOME/.bashrc
}

zsh_config(){
    write_line "export LinuxConfigBoxPath=$PWD" $HOME/.zshrc
    write_line "export SHELL=/bin/zsh" $HOME/.zshrc
    write_line "source $PWD/shell/zsh.sh" $HOME/.zshrc
}

install_tools()
{
    cmd_list=(htop tree git zsh tmux)

    for i in ${cmd_list[@]}; do
        install_cmd $i
    done
}

common_config()
{
    copy_file $PWD/config/gitconfig $HOME/.gitconfig
    copy_file $PWD/config/tmux.conf $HOME/.tmux.conf
    copy_file $PWD/config/bira_ck.zsh-theme $HOME/.oh-my-zsh/themes/bira_ck.zsh-theme
}

install_tools
common_config
bash_config
zsh_config