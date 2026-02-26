local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.enable({
  "clangd",
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
  root_markers = { ".clangd" },
  capabilities = capabilities,
})
