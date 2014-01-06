#!/bin/sh -x

for dotfile in .gitignore .zshrc .vimrc .vim .oh-my-zsh
do
  rm -fr ~/$dotfile
  ln -s $PWD/$dotfile ~/$dotfile
done
