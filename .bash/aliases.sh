alias la="ls -A"
alias ll="ls -lhrt"

alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias ga="git add"

alias e="emacs && echo -ne '\e[3 q'"

alias sc="source ~/.dotfiles/.bashrc"

get() { cat "$1" | termux-clipboard-set; }
