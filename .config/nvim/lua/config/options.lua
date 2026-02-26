vim.opt.termguicolors = true
vim.cmd[[colorscheme tokyonight]]

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.wrap = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.guicursor = "n-v-ve-t-o-r-c-cr:hor20,i-cr-sm:ver20"

vim.opt.list = true
vim.opt.listchars = {
  space = "·",
  eol = "⤶",
  tab = "=»",
  trail = "␣",
  nbsp = "␣",
  extends = "⟩",
  precedes = "⟨",
}

vim.g.netrw_banner = 0

vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.shortmess:append "c"
vim.opt.pumheight = 7

vim.opt.showmode = false
