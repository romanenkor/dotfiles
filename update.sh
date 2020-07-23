#!/bin/sh

cd $(dirname $0)

GIT_DIR=$PWD/.git
git add update.sh

GIT_WORK_TREE=$HOME
[ -d "$HOME/.config/nvim" ] && git add $HOME/.config/nvim
[ -d "$HOME/.config/tmux" ] && git add $HOME/.config/tmux
[ -d "$HOME/.config/tmux" ] && git add $HOME/.tmux.conf
[ -f "$HOME/.zshrc" ] && git add $HOME/.zshrc

git status
git push -u origin master
