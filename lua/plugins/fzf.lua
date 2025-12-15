if true then
  return {}
end
return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")
    local keymap = vim.keymap.set

    keymap("n", "<C-p>", fzf.git_files, { desc = "Fzf find git files" })
    keymap("n", "<leader>ff", fzf.files, { desc = "Fzf find files" })
    keymap("n", "<leader>fg", fzf.live_grep, { desc = "Fzf live grep" })
    keymap("n", "<leader>fb", fzf.buffers, { desc = "Fzf buffers" })
    keymap("n", "<leader>fh", fzf.help_tags, { desc = "Fzf help tags" })
  end,
}
