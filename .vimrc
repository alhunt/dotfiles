" vimrc - VIM Configuration
" Al Hunt

" relativenumber shows line numbers relative to the current line
set relativenumber

" number will show the line number for the current line
set number

" Syntax highlighting
syntax on

" Set up UI
set background=dark
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:Powerline_symbols = 'fancy'
filetype plugin indent on

" Tab handling
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd FileType c setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

" vim-notes config
let g:notes_directories= ['~/notes/']

" Vim Plug-ins
call plug#begin('~/.vim/plugged')
  Plug 'bling/vim-airline'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-notes'
  Plug 'romainl/vim-qlist'
call plug#end()

" END
