local M = {
  "folke/which-key.nvim",
  commit = "5224c261825263f46f6771f1b644cae33cd06995",
  event = "VeryLazy",
}

function M.config()
  local wk = require("which-key")
  wk.setup({
     window = {
        position = 'bottom',
      },
      layout = {
        align = 'center',
      },
    }) 
  wk.register({
    ["<leader>f"] = { name = "+Files" },
    ["<leader>g"] = { name = "+Git" },
    ["<leader>l"] = { name = "+Lsp" },
    ["<leader>\\"] = "Toggle Terminal",
  })
end

return M
