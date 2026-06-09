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
      },
    },
  },

  {
    "vyfor/cord.nvim",
    build = "./build || .\\build",
    event = "VeryLazy",
    opts = require "configs.cord",
  },

  -- Session management
  {
    "folke/persistence.nvim",
    lazy = false,
    config = function()
      require("persistence").setup {
        options = { "curdir", "tabpages", "winsize", "help", "globals" },
        save_dir = vim.fn.stdpath "state" .. "/sessions/",
      }
      vim.schedule(function()
        require("persistence").load()
      end)
    end,
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
