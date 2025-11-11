return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'darker',

      code_style = {
        keywords = 'bold',
        functions = 'bold',
      },
    }

    require('onedark').load()
  end,
}
