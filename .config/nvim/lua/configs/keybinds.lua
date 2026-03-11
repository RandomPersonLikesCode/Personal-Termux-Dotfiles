local map = vim.keymap.set

map("n", "<leader>term", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 8)
end, {
  desc = "Open Terminal",
})
