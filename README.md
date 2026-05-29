# nvim config

Neovim configuration based on **NvChad v2.5**.

## Theme

- **onedark** — via base46

## LSP Servers

Installed via Mason:
`bashls`, `cssls`, `html`, `ts_ls`, `jsonls`, `emmet_language_server`, `marksman`

## Formatter (conform.nvim)

Format on save — prettier untuk frontend files, shfmt untuk shell, stylua untuk lua.

## Treesitter

Parsers: `vim`, `lua`, `vimdoc`, `html`, `css`, `javascript`, `typescript`, `json`, `bash`

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
