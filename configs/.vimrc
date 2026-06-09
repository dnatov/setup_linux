" Use Vim settings
set nocompatible

" Sets line numbers
set relativenumber

" 4 Line Tabs
set tabstop=4
set shiftwidth=4
" Convert tabs to spaces
set expandtab

" Highlight searches
set hlsearch

" No more than 115 chars per line
set colorcolumn=115

inoremap jk <Esc>

" Uses clipboard from OS
set clipboard=unnamedplus
set statusline+=%F

call plug#begin()

" List your plugins here
Plug 'morhetz/gruvbox'

call plug#end()
