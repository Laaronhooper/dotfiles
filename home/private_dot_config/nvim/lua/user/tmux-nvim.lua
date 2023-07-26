local M = {
  "aserowy/tmux.nvim",
  event = "VeryLazy",
}

function M.config()
  require("tmux").setup()
end

return M
