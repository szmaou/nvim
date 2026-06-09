require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })
map("n", "<A-Up>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
map("n", "<A-Down>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("i", "<A-Up>", "<Esc><cmd>m .-2<CR>==gi", { desc = "Move line up" })
map("i", "<A-Down>", "<Esc><cmd>m .+1<CR>==gi", { desc = "Move line down" })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Markdown preview
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown: Toggle preview" })

-- Undotree
map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle undotree" })
