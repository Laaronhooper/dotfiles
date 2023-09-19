return {
  "folke/zen-mode.nvim",
  opts = {
    plugins = {
      options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
      },
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      gitsigns = { enabled = false }, -- disables git signs
      tmux = { enabled = false }, -- disables the tmux statusline
      kitty = {
        enabled = true,
        font = "+4", -- font size increment
      },
    },
  },
}
