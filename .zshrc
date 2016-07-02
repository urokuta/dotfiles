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

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
 export COCOS_CONSOLE_ROOT=/Applications/Cocos/Cocos2d-x/cocos2d-x-3.10/tools/cocos2d-console/bin
 export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
 export COCOS_X_ROOT=/Applications/Cocos/Cocos2d-x
 export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
 export COCOS_TEMPLATES_ROOT=/Applications/Cocos/Cocos2d-x/cocos2d-x-3.10/templates
 export PATH=$COCOS_TEMPLATES_ROOT:$PATH
