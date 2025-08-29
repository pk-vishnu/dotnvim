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

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find git tracked files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

