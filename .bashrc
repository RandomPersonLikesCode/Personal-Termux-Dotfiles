[[ $- != *i* ]] && return

for file in ~/.dotfiles/.bash/*.sh; do
  [ -r "$file" ] && source "$file"
done
