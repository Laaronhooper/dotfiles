-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- disable scroll
map("", "<C- ScrollWheelDown>", "<nop>")
map("", "<C- ScrollWheelLeft>", "<nop>")
map("", "<C- ScrollWheelRight>", "<nop>")
map("", "<C- ScrollWheelUp>", "<nop>")
map("", "<S- ScrollWheelDown", "<nop>")
map("", "<S- ScrollWheelLeft>", "<nop>")
map("", "<S- ScrollWheelRight>", "<nop>")
map("", "<S- ScrollWheelUp>", "<nop>")
map("", "<ScrollWheelDown>", "<nop>")
map("", "<ScrollWheelLeft>", "<nop>")
map("", "<ScrollWheelRight>", "<nop>")
map("", "<ScrollWheelUp>", "<nop>")

-- harpoon
map("n", "<leader>h", "", { desc = "Harpoon" })
map("n", "<leader>h1", "<esc><cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "File 1" })
map("n", "<leader>h2", "<esc><cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "File 2" })
map("n", "<leader>h3", "<esc><cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "File 3" })
map("n", "<leader>h4", "<esc><cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "File 4" })
map("n", "<leader>h4", "<esc><cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Next" })
map("n", "<leader>h4", "<esc><cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Previous" })
map("n", "<leader>ha", "<esc><cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Add file" })
map("n", "<leader>hm", "<esc><cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Menu" })
map("n", "<leader>fm", "<cmd>Telescope harpoon marks<cr>", { desc = "Harpoon Marks" }) -- Telescope

-- undotree
map("n", "<leader>j", "<esc><cmd>lua require('undotree').toggle()<CR>", { desc = "Undotree" })

-- zen-mode
map("n", "<leader>z", "<esc><cmd>lua require('zen-mode').toggle({window = {width = .8}})<CR>", { desc = "Zen-mode" })

-- general
map("n", "<leader>fp", "<esc><cmd>Telescope projects<cr>", { desc = "Projects" }) -- Telescope
map("n", "<leader>fs", "<esc><cmd>ASToggle<cr>", { desc = "Autosave" }) -- Telescope
