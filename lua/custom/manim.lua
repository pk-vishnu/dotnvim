local function manim_render(scene)
  local file = vim.fn.expand("%:p")

  if vim.bo.filetype ~= "python" then
    vim.notify("Not a Python file.", vim.log.levels.WARN)
    return
  end

  local cmd = { "manim", "-pql", file }

  if scene and scene ~= "" then
    table.insert(cmd, scene)
  end

  vim.notify("Rendering Manim scene...", vim.log.levels.INFO, { title = "Manim" })

  vim.fn.jobstart(cmd, {
    stdout_buffered = true,
    stderr_buffered = true,
    on_exit = function(_, code)
      if code == 0 then
        vim.notify("Render complete", vim.log.levels.INFO, { title = "Manim" })
      else
        vim.notify(
          "Render failed (exit code " .. code .. ")",
          vim.log.levels.ERROR,
          { title = "Manim" }
        )
      end
    end,
  })
end

vim.api.nvim_create_user_command("ManimRender", function(opts)
  manim_render(opts.args)
end, {
  desc = "Render Manim scene with -pql (optional scene name)",
  nargs = "?",
})
