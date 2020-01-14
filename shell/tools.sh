#!/bin/bash

set_fzf()
{
    #git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    #~/.fzf/install

    if [[  $SHELL == "/bin/bash"  ]];then
        [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    fi

    if [[  $SHELL == "/bin/zsh"  ]];then
        [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    fi

    alias fzf='fzf --height 40%'
}

set_autojump()
{
    #git clone --depth git://github.com/wting/autojump.git ~/.autojump
    #cd ~/.autojump
    #./install.py or ./uninstall.py
	[[ -s /home/chengkai/.autojump/etc/profile.d/autojump.sh ]] && source /home/chengkai/.autojump/etc/profile.d/autojump.sh
	# autoload -U compinit && compinit -u
}