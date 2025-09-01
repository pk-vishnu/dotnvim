local function compile_typst(output_format)
  local current_file = vim.fn.expand('%:p')
  if not current_file or vim.bo.filetype ~= 'typst' then
    vim.notify("Not a Typst file.", vim.log.levels.WARN)
    return
  end
  local cmd = string.format("typst compile %s --format %s",
    vim.fn.shellescape(current_file),
    vim.fn.shellescape(output_format)
  )
  vim.notify(
    "Compiling to " .. output_format:upper() .. "...",
    vim.log.levels.INFO,
    { title = "Typst" }
  )
  vim.fn.jobstart(cmd, {
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        vim.notify(
          "Compiled",
          vim.log.levels.INFO,
          { title = "Typst" }
        )
      else
        vim.notify(
          "Complilation Failed" .. exit_code,
          vim.log.levels.ERROR,
          { title = "Typst" }
        )
      end
    end,
  })
end

vim.api.nvim_create_user_command(
  'TypstCompile',
  function(opts)
    local format = opts.fargs[1]
    if not format then
      vim.notify("Please specify an output format (pdf, png, svg)", vim.log.levels.WARN)
      return
    end
    compile_typst(format)
  end,
  {
    desc = 'Compile the current Typst file to a specific format [pdf, png, svg]',
    nargs = 1,
    complete = function(arglead, cmdline, cursorpos)
      return { 'pdf', 'png', 'svg' }
    end,
  }
)
