# General setting for Zsh

autoload -Uz compinit && compinit

eval "$(fzf --zsh)"
eval $(dircolors -b)
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
