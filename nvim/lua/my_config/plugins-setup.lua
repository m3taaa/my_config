local cmd = vim.cmd

cmd('if empty(glob("~/.vim/autoload/plug.vim")) | silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | endif')

cmd('call plug#begin(\'~/.vim/plugged\')')
	cmd('Plug \'folke/tokyonight.nvim\'')
	cmd('Plug \'raimondi/delimitmate\'')
	cmd('Plug \'preservim/nerdtree\'')
	cmd('Plug \'ryanoasis/vim-devicons\'')
	cmd('Plug \'nvim-tree/nvim-web-devicons\'')
	cmd('Plug \'nvim-lualine/lualine.nvim\'')
	cmd('Plug \'w0rp/ale\'')
cmd('call plug#end()')
