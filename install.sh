#!/bin/bash
. $PWD/func/func.sh

profile_config(){
    write_line "#add by ck" "$HOME/.profile"
    write_line "export LinuxConfigBoxPath=$PWD" "$HOME/.profile"
    write_line "source $LinuxConfigBoxPath/shell/common.sh" "$HOME/.profile"
    write_line "source $LinuxConfigBoxPath/tools/configTools.sh" "$HOME/.profile"
    write_line "#add by ck end" "$HOME/.profile"
    return
}

bash_config(){
    write_line "#add by ck" "$HOME/.bashrc"
    write_line "export SHELL=/bin/bash" "$HOME/.bashrc"
    write_line "source $LinuxConfigBoxPath/shell/bash.sh" "$HOME/.bashrc"
    write_line "source $LinuxConfigBoxPath/tools/configTools.sh" "$HOME/.bashrc"
    write_line "#add by ck end" "$HOME/.bashrc"
    return
}

zsh_config(){
    write_line "#add by ck" "$HOME/.zshrc"
    write_line "export SHELL=/bin/zsh" "$HOME/.zshrc"
    write_line "source $LinuxConfigBoxPath/shell/zsh.sh" "$HOME/.zshrc"
    write_line "source $LinuxConfigBoxPath/tools/configTools.sh" "$HOME/.zshrc"
    write_line "#add by ck end" "$HOME/.zshrc"
    return
}

# common_config()
# {
#     copy_file $PWD/config/gitconfig $HOME/.gitconfig
#     copy_file $PWD/config/tmux.conf $HOME/.tmux.conf
#     copy_file $PWD/config/bira_ck.zsh-theme $HOME/.oh-my-zsh/themes/bira_ck.zsh-theme
# }
# common_config
profile_config
bash_config
zsh_config


run_shell $PWD/tools/installTools.sh
