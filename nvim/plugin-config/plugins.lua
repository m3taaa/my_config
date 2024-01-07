vim.cmd('if empty(glob("~/.vim/autoload/plug.vim")) | silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | endif')
vim.cmd('call plug#begin(\'~/.vim/plugged\')')

	vim.cmd('Plug \'raimondi/delimitmate\'')
	vim.cmd('Plug \'hrsh7th/nvim-compe\'')
	vim.cmd('Plug \'neovim/nvim-lspconfig\'')
	vim.cmd('Plug \'preservim/nerdtree\'')
	vim.cmd('Plug \'ryanoasis/vim-devicons\'')
	vim.cmd('Plug \'nvim-tree/nvim-web-devicons\'')
	vim.cmd('Plug \'folke/tokyonight.nvim\'')
	vim.cmd('Plug \'hoob3rt/lualine.nvim\'')
	vim.cmd('Plug \'w0rp/ale\'')

vim.cmd('call plug#end()')

-- NVIM-COMPE
require ('compe').setup {
	enable = true,
	autocomplete = true,
	debug = false,
	min_length = 1,
	preselect = 'always',
	source = {
		path = true,
		buffer = true,
		nvim_lsp = true,
	},
}

-- nvim-lspconfig -> config for c
local lspconfig = require('lspconfig')
lspconfig.clangd.setup{}

-- nerdtree
vim.cmd('map <C-o> :NERDTreeToggle<CR>')

--lualine
require('lualine').setup {
  options = {
    theme = 'tokyonight',
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  extensions = {'fugitive', 'nvim-tree', 'quickfix'},
}

-- ale
vim.cmd('let g:ale_completion_enabled = 1')
vim.cmd('let g:ale_completion_autoimport = 1')
