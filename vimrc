set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "corntrace/bufexplorer"
Bundle "garbas/vim-snipmate"
Bundle "majutsushi/tagbar"
Bundle "othree/xml.vim"
Bundle "scrooloose/nerdtree"
Bundle "bling/vim-airline"
Bundle "tpope/vim-fugitive"
Bundle "renajohn/vimate"

filetype plugin indent on
syntax on

set hidden
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set laststatus=2 
set number

nmap <C-N>v :NERDTree<cr>
vmap <C-N>v <esc>:NERDTree<cr>i
imap <C-N>v <esc>:NERDTree<cr>i

nmap <C-N>x :NERDTreeClose<cr>
vmap <C-N>x <esc>:NERDTreeClose<cr>i
imap <C-N>x <esc>:NERDTreeClose<cr>i

let g:airline_enable_fugitive=1 
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'

nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

if filereadable("Makefile")
    set makeprg=make
else
    set makeprg=gcc\ -Wall\ -o\ %<\ %
endif
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i



imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

colorscheme darkspectrum
