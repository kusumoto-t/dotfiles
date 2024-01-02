" leader
let mapleader = " "

" mode
inoremap jk <ESC>

" basics
filetype plugin indent on
syntax on
colorscheme molokai
set t_Co=256
set encoding=utf-8
set clipboard=unnamedplus

" binary only, no eol
set binary noeol

" netrw
let g:netrw_liststyle=1
let g:netrw_banner=0
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
let g:netrw_preview=1

" side number
set number

" list(tab, space)
set listchars=tab:»-,eol:↲
set list

" cursor
set cursorline

" tabstop
set tabstop=4
