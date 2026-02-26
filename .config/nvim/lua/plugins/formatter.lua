return {
  "stevearc/conform.nvim",
  event = "InsertEnter",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
    },

    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },
}
