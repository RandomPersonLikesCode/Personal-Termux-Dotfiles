return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local lualine = require("lualine")

      lualine.setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '|', right = '|'},
          section_separators = { left = '', right = ''},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = false,
          refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'fileformat', {
            'encoding',
            fmt = function(str)
              return str:upper() or "N/A"
            end
          }, 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_c = {'filename'},
          lualine_x = {'location'},
        },
      })
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },

      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufEnter",
    main = "ibl",
    opts = {},
  },
  { 
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      local user = os.getenv("USER") or "User"
      local tcb = require("telescope.builtin")
      local function confirmQuit()
        local option = vim.fn.input("Are you sure want to Quit? (Y/n): ")

        if option:lower() == "y" then
          vim.cmd("qa")
        else
          print("Cancelled")
        end
      end

      dashboard.section.header.val = {
        "  ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      }

      dashboard.section.buttons.val = {
        dashboard.button("n", " New File", ":enew<CR>"),
        dashboard.button("f", "󰮗 Find Files", tcb.find_files),
        dashboard.button("r", "󱈗 Restore Files", tcb.oldfiles),
        dashboard.button("e", "󰥩 File Manager", ":Oil .<CR>"),
        dashboard.button("L", "󱧕 Package Manager", ":Lazy<CR>"),
        dashboard.button("Q", " Quit", confirmQuit),
      }

      dashboard.section.footer.val = "Hello " .. user .. "!, Welcome to Neovim!"

      alpha.setup(dashboard.config)
    end
  },
}
