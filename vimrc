"@
"@ keyword "map" settings
"@
nmap S :w<CR>
nmap Q :q<CR>
nmap QG :q!<CR>
nmap gB :GoBuild<CR>
nmap gT :GoTest<CR>
nmap gR :GoRun<CR>



"@
"@ keyword "set" settings
"@
set cursorline
set cursorcolumn
set textwidth=80
set linebreak
set relativenumber
set showmode
set encoding=utf-8
set nocompatible
set laststatus=2
set  ruler
set undofile
set history=999

set listchars=tab:»■,trail:-
set list

set wildmenu
set wildmode=longest:list,full

set showmatch
set hlsearch
set incsearch

set tabstop=4
set expandtab
set softtabstop=4
set showcmd
set autoindent
set shiftwidth=4


syntax on
filetype indent on



"@
"@ vim-plug settings
"@
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'nsf/gocode'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
call plug#end()
