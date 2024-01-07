-- Requirements
package.path = ';/Users/mathieu/.config/nvim/plugin-config/plugins.lua'
require('plugin-config.plugins')
-- Global Settings
vim.o.termguicolors = true
vim.o.syntax = 'enable'
vim.o.smartcase = true
vim.o.expandtab = false
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.cursorline = true
vim.cmd("colorscheme tokyonight")


print("init.lua charged 🐼")
