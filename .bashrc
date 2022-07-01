alias c="clear"
alias ls="ls --color=auto"

TRI=$'\[\uE0B0\]'
TEXT="\[\033[0;97m\]"
BG_H="\[\033[0;104m\]"
BG="\[\033[44m\]"
TRI_C="\[\033[0;34m\]"
TRI_CH="\[\033[0;94m\]"
NC="\[\033[0m\]"

# PS1='[\u@\h \W]\$ '
PS1="${TEXT}${BG_H} \h ${TRI_CH}${BG}${TRI}${TEXT}${BG} \W ${NC}${TRI_C}${TRI}${NC} "

. "$HOME/.cargo/env"
export LC_ALL="C.UTF-8"
