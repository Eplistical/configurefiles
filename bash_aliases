#!/bin/bash

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

alias c='clear'
alias up='cd ..'

# git
alias gb='git branch'
alias gs='git status'

# tmux
alias txn='tmux new'
alias txa='tmux attach'
alias txl='tmux ls'
alias txk='tmux kill-session'
