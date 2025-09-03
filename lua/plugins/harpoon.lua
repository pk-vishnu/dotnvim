return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local keymap = vim.keymap.set
    harpoon:setup()
    keymap("n", "<leader>a", function()
      harpoon:list():add()
    end)
    keymap("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    keymap("n", "<C-h>", function()
      harpoon:list():select(1)
    end)
    keymap("n", "<C-t>", function()
      harpoon:list():select(2)
    end)
    keymap("n", "<C-n>", function()
      harpoon:list():select(3)
    end)
    keymap("n", "<C-s>", function()
      harpoon:list():select(4)
    end)
    keymap("n", "<C-S-P>", function()
      harpoon:list():prev()
    end)
    keymap("n", "<C-S-N>", function()
      harpoon:list():next()
    end)
  end,
}
