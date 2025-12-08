return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },

  opts = {
    servers = {
      lua_ls = {},
      ocamllsp = {},
      rust_analyzer = {},
      clangd = {},
      nil_ls = {},
      ada_language_server = {},
      pyright = {},
    },
  },
  config = function(_, opts)
    for server, config in pairs(opts.servers) do
      config.capabilities =
        require('blink.cmp').get_lsp_capabilities(config.capabilities)
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end

    vim.diagnostic.config {
      severity_sort = true,
      float = { border = true },
      underline = { severity = vim.diagnostic.severity.ERROR },
      virtual_text = {
        spacing = 4,
      },
    }
  end,
}
