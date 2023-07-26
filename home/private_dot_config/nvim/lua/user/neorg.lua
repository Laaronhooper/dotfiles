  local M = {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = 'norg', -- lazy load on filetype
    cmd = 'Neorg', -- lazy load on command, allows you to autocomplete :Neorg regardless of whether it's loaded yet
    priority = 30,
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                home = "~/.local/share/chezmoi/dot_config/private_neorg/home"
              },
            },
          },
          ["core.keybinds"] = {},
        },
      }
    end,
  }
return M
