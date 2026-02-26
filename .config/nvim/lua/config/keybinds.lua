local map = vim.keymap.set
local tcb = require("telescope.builtin")
local ls = require("luasnip")

map("n", "<leader>Ll", "<Cmd>Lazy<CR>", {
  desc = "Open Lazy.nvim",
})

map("n", "<leader>Ls", "<Cmd>Lazy sync<CR>", {
  desc = "Sync Lazy.nvim",
})

map("n", "<leader>Lu", "<Cmd>Lazy update<CR>", {
  desc = "Perform update",
})

map("n", "<leader>term", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)
end, {
  desc = "Open Terminal",
})

map("n", "<leader>src", "<Cmd>luafile %<CR>", {
  desc = "Load current Lua file",
})

map("n", "<leader>ff", tcb.find_files, {
  desc = "Find Files",
})

map("n", "<leader>fg", tcb.live_grep, {
  desc = "Live Grep",
})

map("n", "<leader>ch", ":checkhealth ", {
  desc = "Perform check health",
})

map("n", "<leader>ex", "<cmd>Oil<CR>", {
  desc = "Open file manager",
})

map("i", "<C-k>", function()
  ls.expand()
end, {
  silent = true,
  desc = "Expand Snippet",
})

map({ "i", "s" }, "<C-l>", function()
  ls.jump(1)
end, {
  silent = true,
  desc = "Jump to Next Snippet Placeholder",
})

map({ "i", "s" }, "<C-h>", function()
  ls.jump(-1)
end, {
  silent = true,
  desc = "Jump to Previous Snippet Placeholder",
})

map({ "n", "v", "c" }, "<leader>dd", function()
  print(vim.diagnostic.setloclist())
end, {
  silent = true,
  desc = "Expand Diagnostic Warnings/Errors List",
})

map("n", "H", function()
  vim.lsp.buf.hover()
end, {
  desc = "Additional Keymap for LSP Hover Documentation",
})
