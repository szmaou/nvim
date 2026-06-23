return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "bash",
        "python",
        "java",
        "c",
        "cpp",
        "c_sharp",
        "go",
        "rust",
        "vue",
        "qmljs",
        "kotlin",
        "xml",
      },
    },
  },

  {
    "vyfor/cord.nvim",
    build = "./build || .\\build",
    event = "VeryLazy",
    opts = require "configs.cord",
  },

  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_command_for_global = true
    end,
  },

  -- Undotree
  {
    "mbbill/undotree",
    lazy = true,
    cmd = "UndotreeToggle",
  },
}
