return {
  'preservim/vimux',
  lazy = false,
  config = function()
    -- Vimux configuration
    vim.g.VimuxHeight = '40'
    vim.g.VimuxOrientation = 'h'

    -- Key mappings
    vim.keymap.set('n', '<Leader>vp', ':VimuxPromptCommand<CR>', { silent = true })
    vim.keymap.set('n', '<Leader>vl', ':VimuxRunLastCommand<CR>', { silent = true })
    vim.keymap.set('n', '<Leader>vi', ':VimuxInspectRunner<CR>', { silent = true })
    vim.keymap.set('n', '<Leader>vq', ':VimuxCloseRunner<CR>', { silent = true })
  end,
}
