return {
  'ggandor/leap.nvim',

  dependencies = {
    'tpope/vim-repeat',
  },

  config = function(_, _)
    vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
    vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
  end,
}
