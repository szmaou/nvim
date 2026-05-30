# nvim config

Neovim configuration based on **NvChad v2.5**.

## Theme

- **onedark** — via base46

## LSP Servers & Formatter

| Bahasa | LSP | Formatter |
|---|---|---|
| HTML / CSS | html, cssls | prettier |
| JavaScript / TypeScript / JSON | ts_ls, jsonls | prettier |
| Emmet | emmet_language_server | — |
| Markdown | marksman | prettier |
| Shell (sh, bash, zsh) | bashls | beautysh |
| Python | pyright | ruff |
| Java | jdtls | LSP fallback |
| C / C++ | clangd | clang-format |
| C# | omnisharp | LSP fallback |
| Go | gopls | gofmt |
| Rust | rust_analyzer | rustfmt |

## Treesitter

Parsers: `vim`, `lua`, `vimdoc`, `html`, `css`, `javascript`, `typescript`, `json`,
`bash`, `python`, `java`, `c`, `cpp`, `c_sharp`, `go`, `rust`

## Custom Keymaps

| Key | Action |
|---|---|
| `;` | Enter command mode |
| `jk` | Exit insert mode |

## Plugins

- lazy.nvim — package manager
- mason.nvim — LSP installer
- nvim-cmp + luasnip — autocompletion & snippets
- telescope.nvim — fuzzy finder
- nvim-tree.lua — file explorer
- conform.nvim — formatter
- gitsigns.nvim — git indicators
- indent-blankline.nvim — indent guides
- which-key.nvim — keymap popup
- cord.nvim — Discord Rich Presence
