#!/bin/bash
setPS1()
{
    ipaddr=`ifconfig wlo1|grep inet|grep -v 127.0.0.1|grep -v inet6 | awk '{print $2}' | tr -d "addr:"`
    #for bash
    #export PS1='\[\e[31m\]\[\e[32m\]{$ipaddr}-\u\[\e[30m\]:\[\e[34m\]\w\[\e[37m\]\n\A\[\e[35m\]\$ \[\e[37m\]'
}
setAlias()
{
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias l='ls -CF'
    alias la='ls -AF'
    alias ll='ls -alh'
    alias ls='ls --color=auto'
    alias cman='man -M /usr/share/man/zh_CN'
    alias rm='trash-put'
    alias reboot='echo null'
    alias reboot_X='reboot'
    alias cdb='cd ../'
    alias em='emacs -nw' 
}

setAutoJump()
{
    #git clone --depth git://github.com/wting/autojump.git ~/.autojump
    #cd ~/.autojump
    #./install.py or ./uninstall.py
	[[ -s /home/chengkai/.autojump/etc/profile.d/autojump.sh ]] && source /home/chengkai/.autojump/etc/profile.d/autojump.sh
	autoload -U compinit && compinit -u
}
setFzf()
{
    #git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    #~/.fzf/install
    #[ -f ~/.fzf.bash ] && source ~/.fzf.bash
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    alias fzf='fzf --height 40%'
}

setJava()
{
    
}


setZplug()
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

setZsh()
{
    setZplug
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
        zsh-syntax-highlighting
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

installFzf()
{

}
# setBash
setAlias
# setAutoJump
# setFzf
setGit
# setTmux

setZsh


# #
# export PATH=$PATH:/opt/toolchains/android-toolchain/bin
# export PATH=$PATH:/home/chengkai/Android/Sdk/platform-tools
# export PATH=$PATH:/opt/hisi-linux/x86-arm/arm-hisiv200-linux/target/bin

# NDK_ROOT=/home/chengkai/Android/android-ndk/android-ndk-r14b/
# umask 022

# export NDK_ROOT=$NDK_ROOT
# export PATH=$PATH:$NDK_ROOT

# GIT_PROMPT_ONLY_IN_REPO=1
# #source ~/.bash-git-prompt/gitprompt.sh


# export MY_TOOLS=/media/chengkai/CKBox/tools/

# #for java
# #export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
# #export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
# export JAVA_HOME=${MY_TOOLS}/jdk/jdk1.8.0_211
# export JRE_HOME=${JAVA_HOME}/jre
# export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
# export PATH=${JAVA_HOME}/bin:$PATH

# #for android
# export ANDROID_HOME=${MY_TOOLS}/Android
# export ANDROID_NDK_HOME=${ANDROID_HOME}/android-ndk-r14b
# export ANDROID_NDK=${ANDROID_NDK_HOME}
# export ANDROID_SDK=${ANDROID_HOME}/Sdk/



# #for hi android sdk
# #export LC_ALL=C
# #export LC_ALL=zh_CN.UTF-8

# #for gradle
# export GRADLE_HOME=/home/chengkai/Documents/tools/gradle-5.4.1/
# export PATH=$PATH:$GRADLE_HOME/bin

# #for groovy
# export PATH=$PATH:/home/chengkai/groovy-2.5.6/bin/

# #./keytool-importkeypair -k ./platform.keystore -p android -pk8 platform.pk8 -cert platform.x509.pem -alias platform
# export PATH=$PATH:/media/chengkai/HardDisk4T/chengkai/GitHub/keytool-importkeypair

# #for nginx
# export PATH=$PATH:/usr/local/nginx/sbin/


# export PATH="/home/chengkai/GameBench/GameBench/lib:$PATH"

# #powerline
# #powerline-daemon -q
# #POWERLINE_BASH_CONTINUATION=1
# #POWERLINE_BASH_SELECT=1
# #source /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
