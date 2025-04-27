--[[                       _
---                       (_)
---  _ __   ___  _____   ___ _ __ ___
--- | '_ \ / _ \/ _ \ \ / / | '_ ` _ \
--- | | | |  __/ (_) \ V /| | | | | | |
--- |_| |_|\___|\___/ \_/ |_|_| |_| |_|
---
--]]

---[[ Global variables ]]---
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

---[[ Options ]]---
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.o.termguicolors = true
