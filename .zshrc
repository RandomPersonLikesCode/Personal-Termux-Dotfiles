# --- Beginning of Zsh Config ---

export ZSH_CONFIG=$HOME/.zsh/configs
export ZSH_THEME=$HOME/.zsh/themes
export ZSH_PLUGIN=$HOME/.zsh/plugins

# load settings

source $ZSH_CONFIG/settings.zsh
source $ZSH_CONFIG/load_plugins.zsh
source $ZSH_CONFIG/load_themes.zsh
source $ZSH_CONFIG/keymaps.zsh
source $ZSH_CONFIG/aliases.zsh
source $ZSH_CONFIG/exports.zsh
source $ZSH_CONFIG/functions.zsh

# --- End of Zsh Config ---
