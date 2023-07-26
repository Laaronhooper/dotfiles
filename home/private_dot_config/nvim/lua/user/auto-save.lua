local M = {
  "https://git.sr.ht/~nedia/auto-save.nvim",
  event = "BufWinEnter",
  config = function()
    require("auto-save").setup({

      events = { "InsertLeave", "TextChanged", "BufLeave"},
    })
  end
}

return M
