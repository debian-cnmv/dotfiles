" Plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Basic settings
set nocompatible
set encoding=utf-8
set number

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smarttab


" Colors
syntax on
set t_Co=256
colorscheme dracula
filetype plugin on

" Encryption
set cm=blowfish2

" Mappings
map <C-n> :NERDTreeToggle<CR>

