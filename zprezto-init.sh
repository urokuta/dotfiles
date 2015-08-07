#!/bin/zsh
setopt EXTENDED_GLOB
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zpreztorc ~/.zpreztorc
for rcfile in "${ZDOTDIR:-$HOME}"/dotfiles/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
