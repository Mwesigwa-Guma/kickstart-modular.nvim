return {
  'augmentcode/augment.vim',
  config = function()
    -- Add keymap to open Augment chat
    vim.keymap.set('n', '<leader>am', '<cmd>Augment Chat<cr>', { desc = '[A]ugment [C]hat' })

    vim.keymap.set('n', '<leader>at', '<cmd>Augment chat-toggle<cr>', { desc = '[A]ugment [C]hat-toggle' })
  end,
}
