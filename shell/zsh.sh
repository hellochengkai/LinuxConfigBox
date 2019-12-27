#!/bin/zsh
set_zplug()
{
#----------zplug-----------------

if [[ ! -d ~/.zplug ]];then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

source ~/.zplug/init.zsh
# Make sure to use double quotes
# zplug "zsh-users/zsh-history-substring-search", hook-load:"echo 'zsh-history-substring-search Loaded!'"

# zplug "theme/bira", from:oh-my-zsh, as:theme, hook-load:"echo 'omzsh theme Loaded!'"
# # Theme!
# zplug "sindresorhus/bira", use:pure.zsh, as:theme

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check --verbose; then
    printf "Install zplug plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3
# source plugins and add commands to the PATH
zplug load --verbose

#----------zplug end-----------------
}

set_zsh()
{
    # set_zplug
    export ZSH="/home/chengkai/.oh-my-zsh"
    #ZSH_THEME="random"
    #echo "zsh theme is $RANDOM_THEME"
    ZSH_THEME="bira_ck"
    #fino
    #fino-time
    #bira
    #bira_ck
    #pure

    #amuse
    #sonicradish
    #pygmalion-virtualenv
    #fletcherm
    #re5et
    #norm
    #strug
    #steeef
    #intheloop
    #dstufft
    plugins=(
        git
        z
        autojump
        fzf
        history-substring-search
        # zsh-syntax-highlighting
        tmux
        vi-mode
        # tig
        zsh-autosuggestions
        themes
        vscode
        )
    ZSH_TMUX_AUTOSTART=false
    ZSH_TMUX_CONFIG="/home/chengkai/tmux.conf"
    source $ZSH/oh-my-zsh.sh
    source ~/.zplug/init.zsh
}

# set_zplug
set_zsh