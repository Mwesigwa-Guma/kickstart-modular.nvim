local dap = require 'dap'

-- C configuration
dap.configurations.c = {
  {
    name = 'Debug C Program',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to C executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

-- C++ configuration (same as C)
dap.configurations.cpp = {
  {
    name = 'Debug C++ Program',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to C++ executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

-- Optional: register the `codelldb` adapter
dap.adapters.codelldb = {
  type = 'server',
  port = '${port}',
  executable = {
    -- Change this path if needed
    command = vim.fn.stdpath 'data' .. '/mason/bin/codelldb',
    args = { '--port', '${port}' },
  },
}
