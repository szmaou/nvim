# nvim config

Neovim configuration based on **NvChad v2.5**.

## Theme

- **matugen** — Material You dynamic theme via base46

  Matugen adalah theme generator yang menghasilkan skema warna dari
  wallpaper/gambar.

  Berbeda dengan theme bawaan nvchad yang statis, matugen menghasilkan
  file theme secara otomatis dari gambar menggunakan tool external
  [`matugen`](https://github.com/InioX/matugen).

  ### Cara pasang
  1. **Install matugen**

     ```bash
     # Arch Linux
     sudo pacman -S matugen
     ```

  2. **Setup template di `~/.config/matugen/config.toml`**

     ```toml
     [templates.nvchad]
     input_path = './templates/nvchad-theme.lua'
     output_path = '~/.config/nvim/lua/themes/matugen.lua'
     post_hook = 'pkill -SIGUSR1 nvim 2>/dev/null || true'
     ```

     Template `nvchad-theme.lua` sudah tersedia di direktori
     `~/.config/matugen/templates/` — contoh juga bisa dilihat di
     `lua/themes/example.lua`.

  3. **Generate theme dari gambar**

     ```bash
     matugen image ~/Pictures/wallpaper.jpg
     ```

     File `~/.config/nvim/lua/themes/matugen.lua` akan tergenerate
     otomatis, dan nvim akan reload theme via signal SIGUSR1.

  4. **Aktifkan theme** di `lua/chadrc.lua`:
     ```lua
     M.base46 = {
       theme = "matugen",
     }
     ```

  ### Cara bikin theme sendiri (manual)

  Copy template contoh:

  ```bash
  cp lua/themes/example.lua lua/themes/namatheme.lua
  ```

  Lalu edit value hex warna di `base_30`, `base_16`, dan `polish_hl`.
  Setelah selesai, ubah `theme` di `chadrc.lua` ke `"namatheme"`.

  Syarat file theme:
  - `M.base_30` — 36 warna untuk UI (statusline, pmenu, dll)
  - `M.base_16` — 16 warna palette terminal (base00–base0F)
  - `M.polish_hl` — (opsional) override highlight group
  - `M.type` — `"dark"` atau `"light"`

  ### Cara ganti theme

  | Method                   | Command                                  |
  | ------------------------ | ---------------------------------------- |
  | Theme picker (Telescope) | `:Telescope themes`                      |
  | Theme picker (NvDash)    | Tekan `th` di dashboard                  |
  | Toggle 2 theme           | `:lua require('base46').toggle_theme()`  |
  | Manual                   | Edit `theme = "..."` di `lua/chadrc.lua` |

  Opsi tambahan di `chadrc.lua`:

  ```lua
  M.base46 = {
    theme = "matugen",
    theme_toggle = { "matugen", "onedark" },  -- toggle 2 theme
    transparency = false,                      -- background transparan
    hl_override = { Comment = { italic = true } },
  }
  ```

## LSP Servers & Formatter

| Bahasa                         | LSP                   | Formatter    |
| ------------------------------ | --------------------- | ------------ |
| HTML / CSS                     | html, cssls           | prettier     |
| JavaScript / TypeScript / JSON | ts_ls, jsonls         | prettier     |
| Emmet                          | emmet_language_server | —            |
| Markdown                       | marksman              | prettier     |
| Shell (sh, bash, zsh)          | bashls                | beautysh     |
| Python                         | pyright               | ruff         |
| Java                           | jdtls                 | LSP fallback |
| C / C++                        | clangd                | clang-format |
| C#                             | omnisharp             | LSP fallback |
| Go                             | gopls                 | gofmt        |
| Rust                           | rust_analyzer         | rustfmt      |

## Treesitter

Parsers: `vim`, `lua`, `vimdoc`, `html`, `css`, `javascript`, `typescript`, `json`,
`bash`, `python`, `java`, `c`, `cpp`, `c_sharp`, `go`, `rust`

## Custom Keymaps

| Key  | Action             |
| ---- | ------------------ |
| `;`  | Enter command mode |
| `jk` | Exit insert mode   |

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
