vim.g.mapleader = " "
local keymap = vim.keymap.set

-- FILE OPS
keymap("n", "<leader>e", ":Ex<CR>", { desc = "Open netrw" })

-- BUFFERS
-- Navigation
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Prev buffer" })
keymap("n","<leader>bd", ":bd<CR>", { desc = "Delete buffer" })
keymap("n", "<leader>bl", ":ls<CR>", { desc = "List buffers" })

