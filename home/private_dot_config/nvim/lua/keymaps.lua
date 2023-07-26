local keymap = vim.keymap.set -- Shorten function name
local opts = { silent = true } -- Silent keymap option}

vim.g.mapleader = " "
vim.g.maplocalleader = ","

keymap("", "<Space>", "<Nop>", opts) --Remap space as leader key

keymap("", "<C- ScrollWheelDown>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<C- ScrollWheelLeft>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<C- ScrollWheelRight>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<C- ScrollWheelUp>", "<nop>", opts) -- Disable scrollwheel 
keymap("", "<S- ScrollWheelDown", "<nop>", opts) -- Disable scrollwheel
keymap("", "<S- ScrollWheelLeft>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<S- ScrollWheelRight>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<S- ScrollWheelUp>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<ScrollWheelDown>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<ScrollWheelLeft>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<ScrollWheelRight>", "<nop>", opts) -- Disable scrollwheel
keymap("", "<ScrollWheelUp>", "<nop>", opts) -- Disable scrollwheel
keymap("i", "jk", "<ESC>", opts)-- Press jk fast to enter
keymap("n", "<C-Down>", ":resize +2<CR>", opts)-- Resize with arrows
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)-- Resize with arrows
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)-- Resize with arrows
keymap("n", "<C-h>", "<C-w>h", opts)-- Better window navigation
keymap("n", "<C-j>", "<C-w>j", opts)-- Better window navigation
keymap("n", "<C-k>", "<C-w>k", opts)-- Better window navigation
keymap("n", "<C-l>", "<C-w>l", opts)-- Better window navigation
keymap("n", "<S-h>", ":bprevious<CR>", opts)-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)-- Navigate buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)-- Close buffers
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", {desc = "Comment"}) -- Comment
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts) -- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts) -- DAP
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts) -- DAP
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts) -- DAP
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts) -- DAP
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts) -- DAP
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts) -- DAP
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts) -- DAP
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts) -- DAP
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {desc = "NvimTree"}) -- NvimTree
keymap("n", "<leader>g", "",  {desc = "Git"}) --Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>",  {desc = "Lazy Git"}) --Git
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)-- Clear highlights
keymap("n", "<leader>l", ":Lazy", {desc = "Lazy"}) -- Lazyvim
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts) -- Lsp
keymap("v", "<", "<gv", opts) -- Stay in indent mode
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv")-- Move lines up and dowm)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv")-- Move lines up and dowm 
keymap("v", ">", ">gv", opts) -- Stay in indent mode
keymap("v", "p", '"_dP', opts)-- Better paste
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", {desc = "Comment"}) -- Comment
keymap('n', '<leader>f', '', { desc = "+Files" }) -- Telescope
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Telescope Buffers" }) -- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = "Telescope Find Files" }) -- Telescope
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = "Telescope Grep" }) -- Telescope
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = "Telescope Help" }) -- Telescope
keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', { desc = "Telescope MRU" }) -- Telescope
keymap('n', '<leader>fs', '<cmd>Telescope possession list<cr>', { desc = "Telescope Posession" }) -- Telescope
