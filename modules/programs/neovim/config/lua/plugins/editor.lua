return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    keys = {
      { "<S-h>", "<cmd>BufferLineCyclePrev<cr>" },
      { "<S-l>", "<cmd>BufferLineCycleNext<cr>" },
      { "<leader>bj", "<cmd>BufferLinePick<cr>" },
    },
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local builtin = require("telescope.builtin")
      local map = vim.keymap.set

      map("n", "<leader>ff", builtin.find_files)
      map("n", "<leader>fg", builtin.live_grep)
    end,
  },
}
