#!/bin/bash
# shellcheck source=../../func/func.sh
. "$LinuxConfigBoxPath/func/func.sh"

config()
{
    run_shell "$HOME/.autojump/etc/profile.d/autojump.sh"
}

config