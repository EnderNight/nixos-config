---[[
---                       (_)
---  _ __   ___  _____   ___ _ __ ___
--- | '_ \ / _ \/ _ \ \ / / | '_ ` _ \
--- | | | |  __/ (_) \ V /| | | | | | |
--- |_| |_|\___|\___/ \_/ |_|_| |_| |_|
---
---]]

---[[ Global variables ]]---
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

require 'config.options'

require 'config.lazy'

require 'config.keymaps'

require 'config.commands'
