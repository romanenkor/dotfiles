#!/bin/sh

cd $(dirname $0)
git config advice.addEmbeddedRepo false
git add update.sh

export GIT_DIR=$PWD/.git
export GIT_WORK_TREE=$HOME

[ -d "$HOME/.config/nvim" ] && git add $HOME/.config/nvim
[ -d "$HOME/.config/tmux" ] && git add $HOME/.config/tmux
[ -d "$HOME/.config/tmux" ] && git add $HOME/.tmux.conf
[ -f "$HOME/.zshrc" ] && git add $HOME/.zshrc

git commit
git push -u origin master
