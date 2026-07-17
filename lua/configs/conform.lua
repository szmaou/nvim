local options = {
  formatters_by_ft = {
    sh = { "beautysh" },
    bash = { "beautysh" },
    zsh = { "beautysh" },
    fish = { "fish_indent" },
    toml = { "taplo" },
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    vue = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    qml = { "qmlls" },
    python = { "ruff_format" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    java = {},
    cs = {},
    go = { "gofmt" },
    rust = { "rustfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
