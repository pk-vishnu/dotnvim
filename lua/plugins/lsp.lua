return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("lua_ls", {
      on_init = function(client)
        client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
          runtime = {
            version = "LuaJIT",
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME,
            },
          },
        })
      end,
      settings = {
        Lua = {},
      },
    })
    -- Helper function to find the virtual environment
    local function find_virtual_env()
      local venv_names = { ".venv", "venv", ".env", "env" }
      local root = vim.fn.getcwd()

      for _, name in ipairs(venv_names) do
        local venv_path = root .. "/" .. name
        -- Check if the directory exists
        if vim.fn.isdirectory(venv_path) == 1 then
          -- Cross-platform check for the python executable
          if vim.fn.has("win32") == 1 then
            local python_exe = venv_path .. "/Scripts/python.exe"
            if vim.fn.executable(python_exe) == 1 then
              return venv_path
            end
          else
            local python_exe = venv_path .. "/bin/python"
            if vim.fn.executable(python_exe) == 1 then
              return venv_path
            end
          end
        end
      end

      return nil
    end

    -- Setup for pyright
    vim.lsp.config("pyright", {
      on_new_config = function(new_config, root_dir)
        local venv = root_dir .. "/.venv"
        local python = venv .. "/bin/python"
        if vim.fn.executable(python) == 1 then
          new_config.settings.python = new_config.settings.python or {}
          new_config.settings.python.pythonPath = python
        end
      end,
      settings = {
        python = {
          -- This is the key setting.
          -- Tell pyright the path to the venv directory.
          venvPath = find_virtual_env(),

          -- You can also set the analysis mode. "basic" is a good default.
          analysis = {
            typeCheckingMode = "basic",
            -- If you still have import issues, you can explicitly add paths.
            -- This is usually not needed if venvPath is set correctly.
            -- extraPaths = { ... }
          },
        },
      },
    })
    vim.lsp.enable("pyright")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("ts_ls")
    vim.lsp.enable("clangd")
    vim.lsp.enable("tinymist")
  end,
}
