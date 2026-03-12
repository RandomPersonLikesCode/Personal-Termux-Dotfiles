return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",

    opts = {},
  },
  {
    "saghen/blink.cmp",
    version = "1.*",

    opts = {
      keymap = { preset = "default" },
      appearance = {
        nerd_font_variant = "mono",
      },
      completion = { documentation = { auto_show = false } },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      fuzzy = { implementation = "rust" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",

    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },

        ensure_installed = {
          "lua",
          "c",
          "cpp",
        },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    cmd = "ConformInfo",

    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
      },

      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 5000,
      },
    },
  },
}
