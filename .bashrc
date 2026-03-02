[[ $- != *i* ]] && return

echo -ne "\e[3 q"

eval "$(fzf --bash)"

for file in ~/.dotfiles/.bash/*.sh; do
  [ -r "$file" ] && source "$file"
done
