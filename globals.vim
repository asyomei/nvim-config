filetype plugin indent on
syntax on

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

set background=light
set guifont=Consolas\ Nerd\ Font:h12

set breakindent cindent smartindent
set breakindentopt=shift:2
set softtabstop=-1
set shiftwidth=2
set expandtab

set number
set list
set signcolumn=yes

set scrolloff=9999
set virtualedit=block,onemore
set whichwrap=b,s,h,l,<,>,[,]

set mouse=a
set nocompatible
set termguicolors
set updatetime=200

nmap mm <cmd>set relativenumber!<cr>

imap <C-c> <Esc>
