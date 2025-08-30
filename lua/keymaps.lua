vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap.set
-- FILE OPS
keymap("n", "<leader>e", ":Ex<CR>", { desc = "Open netrw" })

-- BUFFERS
-- Navigation
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Prev buffer" })
keymap("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" })
keymap("n", "<leader>bl", ":ls<CR>", { desc = "List buffers" })
keymap("n", "<leader>bf", ":b ", { desc = "Fuzzy find buffer" })
keymap("n", "<leader>bda", ":%bd|e#<CR>", { desc = "Delete all buffers except current" })

-- move between splits
keymap('n', '<leader>h', '<C-w>h') -- left
keymap('n', '<leader>j', '<C-w>j') -- down
keymap('n', '<leader>k', '<C-w>k') -- up
keymap('n', '<leader>l', '<C-w>l') -- right

-- resize splits
keymap('n', '<leader><', '<C-w><') -- shrink width
keymap('n', '<leader>>', '<C-w>>') -- increase width
keymap('n', '<leader>+', '<C-w>+') -- increase height
keymap('n', '<leader>-', '<C-w>-') -- decrease height

-- close splits
keymap('n', '<leader>q', '<C-w>c') -- close current split
keymap('n', '<leader>o', '<C-w>o') -- close all other splits

-- open splits
keymap('n', '<leader>sv', ':vsplit<CR>') -- vertical split
keymap('n', '<leader>sh', ':split<CR>')  -- horizontal split

-- move buffer to a new split
keymap('n', '<leader>vh', ':vsplit | wincmd l<CR>') -- move right
keymap('n', '<leader>vj', ':split | wincmd j<CR>')  -- move down

