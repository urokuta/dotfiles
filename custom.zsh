export ANDROID_SDK_HOME=~/Library/Android/sdk
export ANDROID_AVD_HOME=$HOME/.android/avd
export EDITOR=vi

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# brew対策
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH=$PATH:$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools
# rbenvでreadlineをつかうためのオプション
export RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline)"
launchctl setenv STUDIO_JDK /Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/
alias run_ios='xcrun instruments -w "iPhone 5 (8.1 Simulator)"'
alias random_password='openssl rand -base64 16'
#command mp4 to mp3
mp4tomp3() { ffmpeg -i $1 -ab 128k -ar 44100 "${1%\.*}.mp3" }
tomp3() { ffmpeg -i $1  -acodec libmp3lame -aq 4 "${1%\.*}.mp3" }
tomp4() { ffmpeg -i $1 "${1%\.*}.mp4" }
towav() { ffmpeg -i $1 "${1%\.*}.wav" }
tomp4divide2() { ffmpeg -i $1 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "${1%\.*}.mp4" }
convert_pdf_on_dir() { _IFS=$IFS;IFS=$'\n';for d in `ls`;do convert "./$d/*" $d.pdf;done;IFS=$_IFS;}
# $2 = s/a/b/g
replace_all() {find $1 -type f | xargs sed -i "" $2 }

alias g='git'

alias ll='ls -al'
alias l='ls -al'
alias gti='git'
alias todo='git issue all_assigned'
alias todo_all='git issue all_created'
alias gi='git issue'
alias gff='g flow feature finish'
alias gic='git issue add --assignee=urokuta'
# プルリクコメントとセットで、その後開く
gpr() { hub pull-request -m $1 | xargs open }

alias tmxu='tmux'
umask 0002
# export STORYS_ENV="takuro"
# for rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"
# for tmux
export PATH=$HOME/.rbenv/shims:$PATH
# for node brew
export PATH=$HOME/.nodebrew/current/bin:$PATH
# heroku?
export PATH="/usr/local/heroku/bin:$PATH"
# for hub(https://github.com/github/hub)
# eval "$(hub alias -s)"
#alias g="hub"
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# 重複を記録しない
setopt hist_ignore_dups
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# 古いコマンドと同じものは無視 
setopt hist_save_no_dups


###########################################
# peco http://keisanbutsuriya.hateblo.jp/entry/2016/04/11/143252
###########################################

if which peco &> /dev/null; then
    function peco-select-history() {
        local tac
        if which tac > /dev/null; then
            tac="tac"
        else
            tac="tail -r"
        fi
        BUFFER=$(history -n 1 | \
            eval $tac | \
            peco --query "$LBUFFER")
        CURSOR=$#BUFFER
        zle clear-screen
    }
    zle -N peco-select-history
    bindkey '^r' peco-select-history

    function peco-cdr () {
        local selected_dir=$(cdr -l | awk '{ print $2 }' | peco)
        if [ -n "$selected_dir" ]; then
            BUFFER="cd ${selected_dir}"
            zle accept-line
        fi
        zle clear-screen
    }
    zle -N peco-cdr
    bindkey '^xb' peco-cdr
fi
###########################################
# percol http://blog.zoncoen.net/blog/2014/01/14/percol-autojump-with-zsh/
###########################################
# function exists { which $1 &> /dev/null }

# if exists percol; then
#     function percol_select_history() {
#         local tac
#         exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
#         BUFFER=$(history -n 1 | eval $tac | percol --query "$LBUFFER")
#         CURSOR=$#BUFFER         # move cursor
#         zle -R -c               # refresh
#     }

#     zle -N percol_select_history
#     bindkey '^R' percol_select_history
# fi

# export ENHANCD_FILTER=percol
###########################################


###########################################
# autojump tab completion http://blog.zoncoen.net/blog/2014/01/14/percol-autojump-with-zsh/
###########################################
# [[ -s /usr/share/autojump/autojump.zsh ]] && . /usr/share/autojump/autojump.zsh

# for homebrew
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
###########################################

