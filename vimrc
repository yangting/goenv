map <C-s> :w<CR>
map <C-q> :q<CR>

map tt :NERDTree<CR>


syntax on

set backspace=2
set cursorline
set cursorcolumn
set textwidth=80
set linebreak
set number
set relativenumber
set showmode
set showcmd
set encoding=utf-8
"set nocompatible
set laststatus=2
set ruler
set undofile
set history=999

"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

set listchars=tab:»■,trail:■
set list

set wildmenu
set wildmode=longest:list,full

set showmatch
set hlsearch
set incsearch

set tabstop=4
set expandtab
set softtabstop=4
set autoindent
set shiftwidth=4

filetype indent on
filetype plugin on

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'nsf/gocode'

    Plug 'valloric/youcompleteme'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
