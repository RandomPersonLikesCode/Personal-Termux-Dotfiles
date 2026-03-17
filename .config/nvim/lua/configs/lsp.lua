local lsp = vim.lsp
local diag = vim.diagnostic
local caps = require("blink.cmp").get_lsp_capabilities()

lsp.enable("lua_ls")
lsp.enable("clangd")

lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".git", ".luarc.json", ".stylua.toml" },
  capabilities = caps,
})

lsp.config("clangd", {
  cmd = {
    "clangd",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
  },
  filetypes = { "c", "cpp" },
  root_markers = {
    ".git",
    ".clangd",
    ".clang-format",
    ".clang-tidy",
    "compile_commands.json",
  },
  capabilities = caps,
})

diag.config({
  virtual_text = false,
  update_in_insert = false,
  underline = false,
  severity_sort = true,
})
