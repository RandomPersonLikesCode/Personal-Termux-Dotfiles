echo -ne "\e[3 q"

eval "$(fzf --bash)"

alias l="ls --color=always -h"
alias la="l -A"
alias ll="l -l"

alias t="tree -C --filesfirst --gitignore"
alias ta="tree -C --filesfirst -a"
alias tl="t -pugsh"

alias g="git"
alias ga="g add"
alias gc="g commit"
alias gp="g push"
alias gs="g status"

e() {
  $EDITOR "$@"
}
