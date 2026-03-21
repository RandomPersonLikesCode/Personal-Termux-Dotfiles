alias la="ls -A"
alias ll="ls -lrt"

alias c="clear"
alias h="history"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gr="git remote"

e() {
    $EDITOR "$@"
    echo -ne "\e[3 q"
}
