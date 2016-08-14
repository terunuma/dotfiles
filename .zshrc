#export LANG=ja_JP.UTF-8
#export LANG=en_US.utf8
export LC_ALL=en_US.utf8
#export LANG=C

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

# alias
setopt complete_aliases

alias ll='ls -ahl --color'
#alias ll='ls -hlF --color'
alias ls='ls -F --color'
alias rm='rm -i'
alias mv='mv -i'
alias vi='vim'
alias du="du -h"
alias df="df -h"
alias grep="grep -n --color"
alias less="/usr/share/vim/vim74/macros/less.sh"

# prompt (left and right)

local _R=$'%{\e[1;31m%}'
local _B=$'%{\e[1;34m%}'
local _G=$'%{\e[1;32m%}'
local _P=$'%[\e[1;35m%}'
 
local _DF=$'%{\e[1;m%}'
 
local PREFIX=$_DF'█'$_R'█'$_DF'█ '
 
setopt prompt_subst
PROMPT=${PREFIX}$_R'${HOST} $_DF'$_G'${USER}$_DF%(!.'$_R'#.'$_G'$)$_DF '
RPROMPT=[%~]

# options

limit coredumpsize 102400

unsetopt promptcr
 
setopt prompt_subst
setopt long_list_jobs
setopt list_types
setopt auto_list
setopt list_packed
setopt auto_menu
setopt magic_equal_subst
 
zstyle ':completion:*:default' menu select=11

#eval `dircolors`
#export ZLS_COLORS=$LS_COLORS
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt auto_param_slash

setopt noautoremoveslash
