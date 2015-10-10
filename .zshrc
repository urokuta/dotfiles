#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
export ZDOTDIR=~/dotfiles
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# remove -i confirmation option
unalias rm

# Customize to your needs...
source "${ZDOTDIR:-$HOME}/custom.zsh"
source "${ZDOTDIR:-$HOME}/git-issue.zsh"
# source ~/.enhancd/zsh/enhancd.zsh
export PATH=$HOME/.nodebrew/current/bin:$PATH

# for profiling ↓
# if (which zprof > /dev/null) ;then
#   zprof | less
# fi
