--options.lua
local opt = vim.opt

opt.number = true
opt.relativenumber = true

--indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

--search
opt.ignorecase = true
opt.smartcase = true
--ui
opt.wrap = false
opt.termguicolors = true
opt.scrolloff = 10
opt.signcolumn = "yes"
opt.winborder = "rounded"

opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false

