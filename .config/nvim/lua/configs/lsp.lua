local lsp = vim.lsp
local diag = vim.diagnostic
local caps = require("blink.cmp").get_lsp_capabilities()

lsp.enable("clangd")

lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".git", ".luarc.json", ".stylua.toml" },
  capabilities = caps,
})

diag.config({
  virtual_text = true,
  float = {
    border = "single",
    source = "always",
    severity_sort = true,
  },
  update_in_insert = false,
  underline = false,
  severity_sort = true,
})
