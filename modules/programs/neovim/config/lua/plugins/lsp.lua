return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        clangd = {},
        nil_ls = {},
        ocamllsp = {},
      },
    },
    config = function(_, opts)
      local names = vim.tbl_keys(opts.servers) ---@type string[]
      for _, n in ipairs(names) do
        vim.lsp.config(n, opts.servers[n])
        vim.lsp.enable(n)
      end
    end,
  },
}
