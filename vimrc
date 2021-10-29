noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

inoremap jm <Esc>

noremap <C-s> :w<CR>
noremap <C-q> :q<CR>
inoremap <C-s> :w<CR>
inoremap <C-q> :q<CR>

nnoremap tt :NERDTree<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

syntax on

set noswapfile
set clipboard=unnamed
set backspace=2
set cursorline
"set cursorcolumn
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
set showtabline=2
set ignorecase
set incsearch

filetype on
filetype indent on
filetype plugin on

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'nsf/gocode'

    Plug 'valloric/youcompleteme'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'junegunn/vim-easy-align'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'majutsushi/tagbar'
    Plug 'tomtom/tcomment_vim'
call plug#end()
noremap <F8> :TagbarToggle<CR>
let NERDTreeChDirMode=2

let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|tmp$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" 配置一些自定义符号
let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>'  },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }


