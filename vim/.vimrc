" vimrc - VIM Configuration
" Al Hunt

" Use the-silver-searcher instead of grep
if executable("ag")
  set grepprg=ag\ --nogroup\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

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

" coc plugin
let g:coc_node_path = '/usr/bin/node'
source $HOME/.vim/plug-config/coc.vim

" FZF
source $HOME/.vim/plug-config/fzf.vim

" Vim Plug-ins
call plug#begin('~/.vim/plugged')
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
"  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-notes'
  Plug 'romainl/vim-qlist'
  Plug 'neoclide/coc.nvim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" END
