local lsp = vim.lsp
local diag = vim.diagnostic
local caps = require("blink.cmp").get_lsp_capabilities()

lsp.enable("clangd")
lsp.enable("lua_ls")

lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
  root_markers = { ".clangd", "compile_commands.json" },
  capabilities = caps,
})

lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".stylua.toml" },
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
