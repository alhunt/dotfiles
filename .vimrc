syntax on
set background=dark
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:Powerline_symbols = 'fancy'
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd FileType c setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

" vim-notes config
let g:notes_directories= ['~/notes/']

" Vim Pluggins
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

call plug#end()
