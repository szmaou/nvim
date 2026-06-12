require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html", "cssls", "ts_ls", "jsonls", "emmet_language_server", "marksman", "bashls",
  "pyright", "jdtls", "clangd", "gopls", "rust_analyzer", "omnisharp",
  "vue_ls", "tailwindcss", "qmlls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
