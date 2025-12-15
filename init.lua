--main init
require("keymaps")
require("options")
require("lazyConfig")
require("autocmds")
require("custom.typst")
require("custom.manim")

vim.opt.guicursor = "n-v-c:block"

vim.g.python3_host_prog = os.getenv("HOME") .. "/.pyenv/versions/3.11.9/bin/python"
