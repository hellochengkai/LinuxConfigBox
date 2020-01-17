#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

POWERLINE_HOME="/usr/local/lib/python2.7/dist-packages/powerline"

bash_config()
{
    # powerline
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    source  $POWERLINE_HOME/bindings/bash/powerline.sh
}

zsh_config()
{
    # powerline
    powerline-daemon -q
    # POWERLINE_BASH_CONTINUATION=1
    # POWERLINE_BASH_SELECT=1
    source  $POWERLINE_HOME/bindings/zsh/powerline.sh
}

tmux_config()
{
    write_line 'source "'$POWERLINE_HOME'/bindings/tmux/powerline.conf"' $LinuxConfigBoxPath/tools/tmux/tmux.conf
}

config()
{
    tmux_config
    # zsh_config
    # bash_config
    return
}

config