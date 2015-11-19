#!/bin/sh -x

for dotfile in .gitignore .gitconfig .zprofile .zshrc .vimrc .vim .oh-my-zsh .my.cnf .tmux.conf .percol.d
do
  rm -fr ~/$dotfile
  ln -s $PWD/$dotfile ~/$dotfile
done
