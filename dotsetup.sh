#!/bin/sh -x

for dotfile in .gitignore .gitconfig .zprofile .zshrc .vimrc .vim .oh-my-zsh .my.cnf .tmux.conf .percol.d .config Brewfile
do
  rm -fr ~/$dotfile
  ln -s $PWD/$dotfile ~/$dotfile
done
