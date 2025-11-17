return {
  {
    "echasnovski/mini.nvim",
    config = function()
      local statusline = require("mini.statusline")

      local function git_branch()
        local ok, head = pcall(function()
          return vim.b.gitsigns_head
        end)
        if ok and head and head ~= "" then
          return " " .. head
        end
        return ""
      end

      statusline.section_location = function()
        local branch = git_branch()
        local loc = "%l:%c"
        if branch ~= "" then
          return branch .. "  " .. loc
        end
        return loc
      end

      statusline.setup({ use_icons = true })

      statusline.setup({ use_icons = true })
    end,
  },
}
