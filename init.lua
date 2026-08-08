--main init
require("keymaps")
require("options")
require("lazyConfig")
require("autocmds")
require("custom.typst")
require("custom.manim")

vim.o.guicursor = "n-v-c:block," .. "i:hor40-Cursor," .. "r-cr:hor20," .. "o:hor50"
vim.g.python3_host_prog = os.getenv("HOME") .. "/.pyenv/versions/3.11.9/bin/python"
