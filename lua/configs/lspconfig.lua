require("nvchad.configs.lspconfig").defaults()

-- Vue + TypeScript hybrid mode: ts_ls needs @vue/typescript-plugin
-- see https://github.com/vuejs/language-tools/wiki/Neovim
vim.lsp.config("ts_ls", {
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
        languages = { "javascript", "typescript", "vue" },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

local servers = {
  "html", "cssls", "ts_ls", "jsonls", "emmet_language_server", "marksman", "bashls",
  "pyright", "clangd", "gopls", "rust_analyzer", "omnisharp",
  "vue_ls", "tailwindcss", "intelephense",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
