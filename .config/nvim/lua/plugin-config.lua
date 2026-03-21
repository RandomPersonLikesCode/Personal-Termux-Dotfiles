require("tokyonight").setup({
  style = "night",
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
  },
})

require("autoclose").setup()

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true
  },

  indent = {
    enable = true
  },

  ensure_installed = {
    "lua",
    "c",
    "make"
  }
})
