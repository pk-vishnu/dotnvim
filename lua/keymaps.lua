vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap.set
-- FILE OPS
keymap("n", "<leader>e", ":Ex<CR>", { desc = "Open netrw" })

-- BUFFERS
-- Navigation
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Prev buffer" })
keymap("n","<leader>bd", ":bd<CR>", { desc = "Delete buffer" })
keymap("n", "<leader>bl", ":ls<CR>", { desc = "List buffers" })
keymap("n", "<leader>bf", ":b ", { desc = "Fuzzy find buffer" })
keymap("n", "<leader>bda", ":%bd|e#<CR>", {desc = "Delete all buffers except current"})


