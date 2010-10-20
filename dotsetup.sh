#!/bin/sh -x

for dotfile in .gitignore .zshrc .zprofile .screenrc .vimrc .vim 
do
  rm -fr ~/$dotfile
  ln -s $PWD/$dotfile ~/$dotfile
done
