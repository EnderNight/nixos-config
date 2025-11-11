local map = vim.keymap.set

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  event = 'VimEnter',

  config = function(_, opts)
    require('telescope').setup(opts)

    local builtin = require 'telescope.builtin'

    map(
      'n',
      '<leader>ff',
      builtin.find_files,
      { desc = 'Telescope Find Files' }
    )
    map('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope Live Grep' })
  end,
}
