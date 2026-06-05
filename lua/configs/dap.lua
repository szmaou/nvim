local dap = require "dap"
local dapui = require "dapui"

dapui.setup()

require("mason-nvim-dap").setup {
  ensure_installed = {
    "debugpy",
    "codelldb",
    "delve",
    "netcoredbg",
  },
  automatic_installation = true,
}

require("nvim-dap-virtual-text").setup {
  enabled = true,
  virt_text_pos = "eol",
}


-- Automatically open/close DAP UI
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.after.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.after.event_exited["dapui_config"] = function()
  dapui.close()
end
