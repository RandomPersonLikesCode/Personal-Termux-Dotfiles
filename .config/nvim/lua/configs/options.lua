vim.cmd([[colorscheme tokyonight-night]])

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars = {
  trail = "␣",
  tab = "=>",
  extends = "⟩",
  precedes = "⟨",
  space = "·",
  eol = "⤶",
}

vim.g.netrw_banner = 0

vim.opt.guicursor = "n-v-c:hor25,i-ci-ve:ver25,r-cr:hor25,o:hor25"

vim.opt.showmode = false
