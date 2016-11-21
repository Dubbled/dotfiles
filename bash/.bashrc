alias ls="ls --color"
alias man="man -p most"
alias clean="pacaur -Rscn $(pacaur -Qdt | while read -a array; do echo ${array[0]}; done)"
alias vps1="ssh root@vps1 -p 25824"
alias vim="nvim"
export GOPATH=$HOME/Go
