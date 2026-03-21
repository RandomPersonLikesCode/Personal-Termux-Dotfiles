BLUE='\[\e[34m\]'
ORANGE='\[\e[33m\]'
RESET='\[\e[0m\]'

PS1="${BLUE}[RandomPerson - \W]${ORANGE}\$ ${RESET}"

export EDITOR="nvim"
export VISUAL="nvim"

export HISTSIZE=100000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoreboth:erasedups
export HISTTIMEFORMAT="%F %T "
shopt -s histappend
