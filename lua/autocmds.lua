local group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

vim.api.nvim_set_hl(0, "YankHighlightColor", { fg = "#000000", bg = "#FFA500", bold = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "YankHighlightColor", timeout = 200 })
  end,
})
