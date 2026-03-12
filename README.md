# Personal Termux Dotfiles

This is my personal dotfiles for Termux.

Setup:

- zsh
- eza
- fzf
- zoxide
- fd
- ripgrep
- bat
- termux-api

- git
- openssh
- helix

- build-essential
- lua55
- lua-language-server
- stylua

Other setup:

``` sh
mkdir -p $HOME/.config $HOME/.local/{bin,lib,include,share}

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.zsh/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/plugins/zsh-syntax-highlighting

mkdir -p "$(bat --config-dir)/themes"
cd "$(bat --config-dir)/themes"
curl -O https://raw.githubusercontent.com/folke/tokyonight.nvim/main/extras/sublime/tokyonight_night.tmTheme
bat cache --build
cd $HOME
```

**Disclaimer: If you want to use this dotfiles, use it at your own risk!**
**Something might break if you don't use this dotfiles accordingly.**
