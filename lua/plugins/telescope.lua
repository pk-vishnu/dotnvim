return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local keymap = vim.keymap.set
    require("telescope").setup({
      defaults = {
        layout_config = {
          height = 100,
          width = 400,
          prompt_position = "top",
        },
      },
    })
    local builtin = require("telescope.builtin")
    keymap("n", "<C-p>", builtin.git_files, { desc = "Telescope find files" })
    keymap("n", "<leader>ff", builtin.find_files, { desc = "Telescope find git tracked files" })
    keymap("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    keymap("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    keymap("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
  end,
}
