#!/bin/sh -x

OMZ_DIR=~/dotfiles/.oh-my-zsh/custom
CUSTOM_DIR=~/dotfiles/.oh-my-zsh-customs/custom
for item in `ls $CUSTOM_DIR`
do
  ln -s $CUSTOM_DIR/$item $OMZ_DIR/$item
done

