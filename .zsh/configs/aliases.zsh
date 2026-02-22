# Aliases config for Zsh

alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions --group-directories-first"
alias ll="eza --color=always --long --git --icons=always"
alias la="ls -a"
alias tree="ls --tree"
alias ff="fastfetch"

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
