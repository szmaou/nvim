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

-- DAP
map("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "DAP: Toggle breakpoint" })
map("n", "<leader>dB", function()
  require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
end, { desc = "DAP: Conditional breakpoint" })
map("n", "<leader>dc", function() require("dap").continue() end, { desc = "DAP: Continue" })
map("n", "<leader>dso", function() require("dap").step_over() end, { desc = "DAP: Step over" })
map("n", "<leader>dsi", function() require("dap").step_into() end, { desc = "DAP: Step into" })
map("n", "<leader>dI", function() require("dap").step_out() end, { desc = "DAP: Step out" })
map("n", "<leader>dt", function() require("dap").terminate() end, { desc = "DAP: Terminate" })
map("n", "<leader>du", function() require("dapui").toggle() end, { desc = "DAP: Toggle UI" })
map("n", "<leader>dr", function() require("dap").repl.open() end, { desc = "DAP: Open REPL" })

-- Neotest
map("n", "<leader>tt", function() require("neotest").run.run() end, { desc = "Neotest: Run nearest" })
map("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand "%") end, { desc = "Neotest: Run file" })
map("n", "<leader>ts", function() require("neotest").run.run(vim.uv.cwd()) end, { desc = "Neotest: Run all suites" })
map("n", "<leader>to", function() require("neotest").output_panel.toggle() end, { desc = "Neotest: Toggle output panel" })
map("n", "<leader>tl", function() require("neotest").run.run_last() end, { desc = "Neotest: Run last" })
map("n", "<leader>tx", function() require("neotest").run.stop() end, { desc = "Neotest: Stop" })
map("n", "<leader>tS", function() require("neotest").summary.toggle() end, { desc = "Neotest: Toggle summary" })

-- Session
map("n", "<leader>qs", function() require("persistence").save() end, { desc = "Session: Save" })
map("n", "<leader>ql", function() require("persistence").load() end, { desc = "Session: Load" })
map("n", "<leader>qd", function() require("persistence").stop() end, { desc = "Session: Stop" })

-- Markdown preview
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown: Toggle preview" })

-- Undotree
map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle undotree" })
