local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --
-- Colemak adjustment to navigation
 keymap("n", "n", "h", opts) --left
 keymap("n", "e", "j", opts) --down
 keymap("n", "i", "k", opts) --up
 keymap("n", "o", "l", opts) --right 
 keymap("n", "l", "o", opts) --lip (bottom)
 keymap("n", "L", "O", opts) --lip (top)
 keymap("n", "h", "i", opts) --(place) here
 keymap("n", "H", "I", opts) --(place begining) here
 keymap("n", "q", "e", opts) --q-end
 keymap("n", "k", "n", opts) --know (search)
 keymap("n", "K", "N", opts) --know (search)

-- Better window navigation
keymap("n", "<C-n>", "<C-w>n", opts)
keymap("n", "<C-e>", "<C-w>e", opts)
keymap("n", "<C-i>", "<C-w>i", opts)
keymap("n", "<C-o>", "<C-w>o", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-o>", ":bnext<CR>", opts)
keymap("n", "<S-n>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-Down>", "<Esc>:m .-2<CR>==gi", opts)
keymap("n", "<A-Up>", "<Esc>:m .+1<CR>==gi", opts)

-- INSERT --
-- Press jk fast to enter
keymap("i", "ei", "<ESC>", opts)

-- VISUAL --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK --
-- Move text up and down
keymap("x", "Down", ":move '<-2<CR>gv-gv", opts)
keymap("x", "Up", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-n>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-e>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-i>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-o>", "<C-\\><C-N><C-w>l", term_opts)
