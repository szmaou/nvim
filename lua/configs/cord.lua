return {
  usename = true,
  showtime = true,
  editoricon = "neovim",
  log = {
    level = vim.log.levels.WARN,
  },
  global_mode = "minimal",
  display = {
    workspace = {
      enabled = true,
      transform = function(workspace)
        return vim.fn.fnamemodify(workspace, ":t")
      end,
    },
  },
}
