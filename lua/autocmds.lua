require "nvchad.autocmds"

-- Matugen theme reload on SIGUSR1
vim.api.nvim_create_autocmd("Signal", {
	pattern = "SIGUSR1",
	callback = function()
		require("base46").load_all_highlights()
	end,
})
