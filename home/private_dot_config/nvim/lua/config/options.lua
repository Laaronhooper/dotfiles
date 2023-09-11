-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.maplocalleader = ","

local opt = vim.opt

opt.mouse = "a"
opt.iskeyword:append("-")
opt.swapfile = false
