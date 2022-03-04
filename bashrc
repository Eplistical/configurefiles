#!/bin/bash

# History
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize

# LANG
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# TERM
export TERM='xterm-256color'
# PS
WORKDIR_STYLE="" #"\\[\e[38;5;88m\]"
DEFAULT_STYLE="" #"\\[\e[38;5;0m\]"
export PS1="${DEFAULT_STYLE}\h:${WORKDIR_STYLE}\W${DEFAULT_STYLE}\$"
export PS2='>'
unset WORKDIR_STYLE COMMAND_STYLE DEFAULT_STYLE

# init path & libs
export PATH=$HOME/script:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export LIBRARY_PATH=$HOME/lib64:$HOME/lib:/usr/local/lib64:/usr/local/lib:/usr/lib64:/usr/lib
export LD_LIBRARY_PATH=
export LD_PRELOAD=
export CPATH=$HOME/include:/usr/local/include:/usr/include:/include

# Recycle
export RECYCLEPATH=$HOME/.recycle

# Compilers
export CC=gcc
export CXX=g++
export FC=gfortran
export F77=gfortran

# LS_COLORS
#terminal_profile="light"
terminal_profile="dark"
LS_COLORS=
if [ "$terminal_profile" == "light" ];then
export LS_COLORS="rs=0:di=38;5;27:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lz=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.bz=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.rar=38;5;9:*.ace=38;5;9:*.zoo=38;5elif [ "$terminal_profile" == "dark" ];then
export LS_COLORS="rs=0:di=38;5;81:ln=38;5;226:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;255:*.tar=38;5;9:*.tgz=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lz=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.bz=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.rar=38;5;9:*.ace=38;5;9:*.zoo=38fi


# aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# no escaping '$' when clicking tab in bash
shopt -u progcomp

# vim
export EDITOR="vim"
alias vims="vim -S"

# git
alias gb='git branch'
alias gs='git status'
alias gc="git commit"
alias gl="git log --decorate --oneline --graph"
alias gd="git diff"

parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
export PS1="\[\e[91m\]\$(parse_git_branch)\[\e[00m\]$PS1"

# tmux
export TMUX_TMPDIR="$HOME/.tmux"
alias txa="tmux attach"
alias txl="tmux ls"
alias txn="tmux new"
alias txd="tmux detach"
alias txk="tmux kill-session"

# misc aliases
alias c='clear'
alias up='cd ..'
alias rm='mv2recycle'
alias shy='ssh -Y'
alias chrome='google-chrome'
alias vi='vim'
alias bra="vi $HOME/.bash_aliases"
alias brc="vi $HOME/.bashrc"
alias vrc="vi $HOME/.vimrc"
alias sb="source $HOME/.bashrc"
alias ls="ls --color=always --group-directories-first --sort=extension"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -l'
