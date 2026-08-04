# nvim config

Neovim configuration based on **NvChad v2.5**.

## Installation

```bash
git clone --depth 1 git@github.com:szmaou/nvim.git ~/.config/nvim
nvim --headless "+Lazy! sync" +qa
```

## File Structure

```
~/.config/nvim/
├── init.lua              # entry point
├── lua/
│   ├── chadrc.lua        # NvChad config (theme, UI)
│   ├── mappings.lua      # custom keymaps
│   ├── options.lua       # custom options
│   ├── plugins/init.lua  # extra plugin specs
│   └── configs/
│       ├── conform.lua   # formatters
│       ├── lspconfig.lua # LSP servers
│       └── cord.lua      # Discord RPC
└── README.md
```

## LSP & Formatters

| Bahasa                         | LSP                   | Formatter    |
| ------------------------------ | --------------------- | ------------ |
| C / C++                        | clangd                | clang-format |
| C#                             | omnisharp             | LSP fallback |
| Emmet                          | emmet_language_server | —            |
| Fish                           | —                     | fish_indent  |
| Go                             | gopls                 | gofmt        |
| HTML / CSS                     | html, cssls           | prettier     |
| JavaScript / TypeScript / JSON | ts_ls, jsonls         | prettier     |
| Lua                            | —                     | stylua       |
| Markdown                       | marksman              | prettier     |
| Python                         | pyright               | ruff         |
| Rust                           | rust_analyzer         | rustfmt      |
| Shell (sh, bash, zsh)          | bashls                | beautysh     |
| Tailwind CSS                   | tailwindcss           | —            |
| TOML                           | —                     | taplo        |
| Vue                            | vue_ls                | prettier     |

## Extra Plugins

- **markdown-preview.nvim** — live markdown preview
- **undotree** — visual undo history
- **cord.nvim** — Discord Rich Presence

## Treesitter

`vim`, `lua`, `vimdoc`, `html`, `css`, `javascript`, `typescript`, `json`,
`bash`, `python`, `c`, `cpp`, `c_sharp`, `go`, `rust`, `vue`,
`toml`, `markdown`, `query`

## Custom Keymaps

| Key           | Action                    |
| ------------- | ------------------------- |
| `;`           | Enter command mode        |
| `jk`          | Exit insert mode          |
| `<leader>q`   | Quit                      |
| `<A-Up/Down>` | Move line up/down (n/i/v) |
| `<leader>mp`  | Toggle markdown preview   |
| `<leader>u`   | Toggle undotree           |
