# nvim config

Neovim configuration based on **NvChad v2.5**.

## Theme

`github_dark` via NvChad base46. Ganti di `lua/chadrc.lua`.

## LSP Servers & Formatter

| Bahasa                         | LSP                   | Formatter    |
| ------------------------------ | --------------------- | ------------ |
| HTML / CSS                     | html, cssls           | prettier     |
| JavaScript / TypeScript / JSON | ts_ls, jsonls         | prettier     |
| Emmet                          | emmet_language_server | —            |
| Markdown                       | marksman              | prettier     |
| Shell (sh, bash, zsh)          | bashls                | beautysh     |
| Fish                           | —                     | fish_indent  |
| Python                         | pyright               | ruff         |
| Java                           | jdtls                 | LSP fallback |
| C / C++                        | clangd                | clang-format |
| C#                             | omnisharp             | LSP fallback |
| Go                             | gopls                 | gofmt        |
| Rust                           | rust_analyzer         | rustfmt      |
| TOML                           | —                     | taplo        |

## Treesitter

Parsers: `vim`, `lua`, `vimdoc`, `html`, `css`, `javascript`, `typescript`, `json`,
`bash`, `python`, `java`, `c`, `cpp`, `c_sharp`, `go`, `rust`, `toml`

## Custom Keymaps

| Key | Action |
| --- | ------ |
| `;` | Enter command mode |
| `jk` | Exit insert mode |
| `<leader>q` | Quit |
| `<A-Up/Down>` | Move line up/down (n/i/v) |
| `<leader>mp` | Toggle markdown preview |
| `<leader>u` | Toggle undotree |

## Plugins

- lazy.nvim — package manager
- mason.nvim — LSP/DAP installer
- nvim-cmp + luasnip — autocompletion & snippets
- telescope.nvim — fuzzy finder
- nvim-tree.lua — file explorer
- conform.nvim — formatter
- gitsigns.nvim — git indicators
- indent-blankline.nvim — indent guides
- which-key.nvim — keymap popup
- persistence.nvim — session management
- markdown-preview.nvim — live markdown preview
- undotree — visual undo history
- cord.nvim — Discord Rich Presence
