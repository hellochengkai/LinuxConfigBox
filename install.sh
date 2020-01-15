#!/bin/bash
. $PWD/func/func.sh

profile_config(){
    write_line "#add by ck" "$HOME/.profile"
    write_line "export ifdev=wlo1" "$HOME/.profile"
    write_line "export LinuxConfigBoxPath=$PWD" "$HOME/.profile"
    write_line 'source $LinuxConfigBoxPath/shell/common_profile.sh' "$HOME/.profile"
    write_line 'source $LinuxConfigBoxPath/tools/configTools.sh' "$HOME/.profile"
    write_line "#add by ck end" "$HOME/.profile"
    return
}

bash_config(){
    write_line "#add by ck" "$HOME/.bashrc"
    write_line "export SHELL=/bin/bash" "$HOME/.bashrc"
    write_line 'source $LinuxConfigBoxPath/shell/bash.sh' "$HOME/.bashrc"
    write_line 'source $LinuxConfigBoxPath/tools/configTools.sh' "$HOME/.bashrc"
    write_line "#add by ck end" "$HOME/.bashrc"
    return
}

zsh_config(){
    write_line "#add by ck" "$HOME/.zshrc"
    write_line "export SHELL=/bin/zsh" "$HOME/.zshrc"
    write_line 'source $LinuxConfigBoxPath/shell/zsh.sh' "$HOME/.zshrc"
    write_line 'source $LinuxConfigBoxPath/tools/configTools.sh' "$HOME/.zshrc"
    write_line "#add by ck end" "$HOME/.zshrc"
    return
}

export LinuxConfigBoxPath="$PWD"
profile_config
bash_config
zsh_config


run_shell $PWD/tools/installTools.sh
