syntax	on
set	number
set	ruler
set	showmatch
set	smartindent
set	autoindent
set	nobackup
set	shiftwidth=4
set	tabstop=4
set	showcmd
set	showmode
set	nowrap
set	encoding=UTF-8
colorscheme dracula

" Plugin
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'scrooloose/syntastic'
	Plug 'raimondi/delimitmate'
	Plug 'ryanoasis/vim-devicons'
	Plug 'w0rp/ale'
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Config NERDTREE
map <C-o> :NERDTreeToggle<CR>

" Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'wombat',}

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ale
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

" 42
let g:user42 = "mmeerber"
let g:mail42 = "mmeerber@student.s19.be"
