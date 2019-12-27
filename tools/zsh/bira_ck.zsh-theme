# ZSH Theme - Preview: https://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# ${USER}@${ipaddr}
if [[ $UID -eq 0 ]]; then
    local user_host='%{$fg[red]%}%n@${ipaddr}%{$reset_color%}'
    local user_symbol='$'
else
    local user_host='%{$fg[green]%}%n@${ipaddr}%{$reset_color%}'
    local user_symbol='›'
fi

local current_dir='%{$fg[blue]%}% %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${user_host}${current_dir} ${git_branch}
%{$fg[white]%}%T%{$fg[blue]%}%B${user_symbol}%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"