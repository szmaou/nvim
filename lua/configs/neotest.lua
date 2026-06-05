local neotest = require "neotest"

neotest.setup {
  adapters = {
    require "neotest-python" {},
    require "neotest-go",
    require "neotest-rust",
  },
}
