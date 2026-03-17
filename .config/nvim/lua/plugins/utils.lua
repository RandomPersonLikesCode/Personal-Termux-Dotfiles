return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    event = "InsertEnter",
    opts = {},
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    priority = 500,
    opts = {},
  },
}
