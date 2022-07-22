#!/bin/bash

function git_branch { 
  branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`" 
  if [ "${branch}" != "" ];then 
    if [ "${branch}" = "(no branch)" ];then 
      branch="(`git rev-parse --short HEAD`...)" 
    fi 
    echo " ($branch)"
  fi
}

set_PS1()
{
    # ipaddr=`ifconfig wlo1|grep inet|grep -v 127.0.0.1|grep -v inet6 | awk '{print $2}' | tr -d "addr:"`
    #for bash
    export PS1='\[\e[31m\]\[\e[32m\]\u@$ipaddr\[\e[30m\]:\[\e[34m\]\w\[\e[36m\]$(git_branch)\[\e[37m\]\n\A\[\e[35m\]\$ \[\e[37m\]'
}

source $LinuxConfigBoxPath/shell/common.sh
set_PS1
export SHELL=/bin/bash
source $LinuxConfigBoxPath/tools/configTools.sh
