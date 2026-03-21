if [ -d "$HOME/.bash" ]; then
  for file in "$HOME/.bash"/*.sh; do
    [ -r "$file" ] && source "$file"
  done
fi
