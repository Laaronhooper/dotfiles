local keymap = vim.keymap.set  -- Shorten function name
local opts = { silent = true } -- Silent keymap option}

vim.g.mapleader = " "
vim.g.maplocalleader = ","

keymap("", "<Space>", "<Nop>", opts)                                                                            --Remap space as leader key

keymap("", "<C- ScrollWheelDown>", "<nop>", opts)                                                               -- Disable scrollwheel
keymap("", "<C- ScrollWheelLeft>", "<nop>", opts)                                                               -- Disable scrollwheel
keymap("", "<C- ScrollWheelRight>", "<nop>", opts)                                                              -- Disable scrollwheel
keymap("", "<C- ScrollWheelUp>", "<nop>", opts)                                                                 -- Disable scrollwheel
keymap("", "<S- ScrollWheelDown", "<nop>", opts)                                                                -- Disable scrollwheel
keymap("", "<S- ScrollWheelLeft>", "<nop>", opts)                                                               -- Disable scrollwheel
keymap("", "<S- ScrollWheelRight>", "<nop>", opts)                                                              -- Disable scrollwheel
keymap("", "<S- ScrollWheelUp>", "<nop>", opts)                                                                 -- Disable scrollwheel
keymap("", "<ScrollWheelDown>", "<nop>", opts)                                                                  -- Disable scrollwheel
keymap("", "<ScrollWheelLeft>", "<nop>", opts)                                                                  -- Disable scrollwheel
keymap("", "<ScrollWheelRight>", "<nop>", opts)                                                                 -- Disable scrollwheel
keymap("", "<ScrollWheelUp>", "<nop>", opts)                                                                    -- Disable scrollwheel
keymap("i", "jk", "<ESC>", opts)                                                                                -- Press jk fast to enter
keymap("n", "<C-Down>", ":resize +2<CR>", opts)                                                                 -- Resize with arrows
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)                                                        -- Resize with arrows
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)                                                       -- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)                                                                   -- Resize with arrows
keymap("n", "<C-h>", "<C-w>h", opts)                                                                            -- Better window navigation
keymap("n", "<C-j>", "<C-w>j", opts)                                                                            -- Better window navigation
keymap("n", "<C-k>", "<C-w>k", opts)                                                                            -- Better window navigation
keymap("n", "<C-l>", "<C-w>l", opts)                                                                            -- Better window navigation
keymap("n", "<S-h>", ":bprevious<CR>", opts)                                                                    -- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)                                                                        -- Navigate buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)                                                                 -- Close buffers
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = "Comment" }) -- Comment
keymap("n", "<leader>?", "<cmd>nohlsearch<CR>", opts)                                                           -- Clear highlights
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "NvimTree" })                                      -- NvimTree
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Lazy Git" })                              -- Git
keymap("n", "<leader>h1", "<esc><cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "File 1" })           -- Harpoon
keymap("n", "<leader>h2", "<esc><cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "File 2" })           -- Harpoon
keymap("n", "<leader>h3", "<esc><cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "File 3" })           -- Harpoon
keymap("n", "<leader>h4", "<esc><cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "File 4" })           -- Harpoon
keymap("n", "<leader>h4", "<esc><cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Next" })              -- Harpoon
keymap("n", "<leader>h4", "<esc><cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Previous" })          -- Harpoon
keymap("n", "<leader>ha", "<esc><cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Add file" })        -- Harpoon
keymap("n", "<leader>hm", "<esc><cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Menu" })     -- Harpoon
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)                              -- Lsp
keymap("n", "<leader>u", "<esc><cmd>lua require('undotree').toggle()<CR>", { desc = "Undotree" })               -- Harpoon
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { desc = "Trouble"}) -- Trouble
keymap("v", "<", "<gv", opts)                                                                                   -- Stay in indent mode
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv")                                                                        -- Move lines up and dowm)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv")                                                                        -- Move lines up and dowm
keymap("v", ">", ">gv", opts)                                                                                   -- Stay in indent mode
keymap("v", "p", '"_dP', opts)                                                                                  -- Better paste
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",{ desc = "Comment" })                                                                                         -- Comment
keymap('n', '<leader>\\', ':ToggleTerm<CR>', opts) -- Terminal
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Telescope Buffers" })                         -- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = "Finder" })                   -- Telescope
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = "Grep" })                          -- Telescope
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = "Telescope Help" })                          -- Telescope
keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', { desc = "Recent files" })                            -- Telescope
keymap('n', '<leader>fp', '<cmd>Telescope harpoon marks<cr>', { desc = "Harpoon Marks" })                       -- Telescope
keymap('n', '<leader>fs', '<cmd>Telescope possession list<cr>', { desc = "Telescope Posession" })               -- Telescope
keymap('n', '<leader>m', '<cmd>Mason<cr>', { desc = "Mason" })               --Mason 
