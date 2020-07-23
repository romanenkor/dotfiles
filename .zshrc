# ZSH configuration
# Roman Romanenko <romu4444@gmail.com>
#
# What's included?
# * Configuration files moved from ~ to ~/.config
# * Runs tmux in terminal emulator by default
# * Git aliases
# * Automatic suggestions
# * Syntax highlighting
# * Vim-mode
# 
# Plugins are assumed to be installed in /usr/share/zsh/plugins
# To change folder edit variable ZSH_CUSTOM in .zshrc
#
# Installation:
# * Install zsh
# * Install oh-my-zsh to /usr/share/oh-my-zsh
# * Install zsh-autosuggestions
# * Install zsh-syntax-highlighting
#
export PATH="$PATH:$HOME/.local/bin/"

export EDITOR="nvim"
export BROWSER="firefox"
export LESSHISTFILE="$HOME/.cache/less/history"
# export TERMINAL="st"
# export FILE="lf"
# export READER="zathura"

# Configure FZF
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

HISTFILE="$HOME/.cache/zsh/history"
ZSH="/usr/share/oh-my-zsh"
ZSH_THEME="robbyrussell"
ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump"
ZSH_CUSTOM="/usr/share/zsh"
DISABLE_AUTO_UPDATE=true

if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir -p $ZSH_CACHE_DIR
fi

plugins=(vi-mode git zsh-autosuggestions zsh-syntax-highlighting)

alias vim="nvim"
alias wget="wget --hsts-file ~/.cache/wget/wget-hsts"

source $ZSH/oh-my-zsh.sh

! command -v tmux &> /dev/null && return
[[ -z $DISPLAY ]] && return
[[ -z $PS1 ]] && return
[[ -n $TMUX ]] && return
