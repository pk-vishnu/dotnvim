--main init
require("keymaps")
require("options")
require("lazyConfig")
require("autocmds")
require("custom.typst")
require("custom.manim")

vim.o.guicursor = "n-v-c:block," .. "i:hor40-Cursor," .. "r-cr:hor20," .. "o:hor50"
vim.g.python3_host_prog = os.getenv("HOME") .. "/.pyenv/versions/3.11.9/bin/python"

vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "/mnt/c/Windows/System32/clip.exe",
    ["*"] = "/mnt/c/Windows/System32/clip.exe",
  },
  paste = {
    ["+"] =
    '/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ["*"] =
    '/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}
