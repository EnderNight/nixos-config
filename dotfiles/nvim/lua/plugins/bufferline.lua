local map = vim.keymap.set

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function(_, opts)
    require('bufferline').setup(opts)

    map(
      'n',
      '<S-h>',
      '<cmd>BufferLineCyclePrev<cr>',
      { desc = 'Previous Buffer' }
    )
    map('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Buffer' })
    map(
      'n',
      '<leader>bp',
      '<cmd>BufferLinePick<cr>',
      { desc = 'Pick a Buffer' }
    )
    map(
      'n',
      '<leader>bc',
      '<cmd>BufferLinePickClose<cr>',
      { desc = 'Pick a Buffer to Close' }
    )
  end,
}
