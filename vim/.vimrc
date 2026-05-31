syntax on
set termguicolors

colorscheme onedark

set cursorline

hi clear CursorLine
augroup CLClear
  autocmd! ColorScheme * hi clear CursorLine
augroup END

set number
set relativenumber

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
filetype plugin indent off

set confirm

set nowrap

set mouse=

set list
set listchars=tab:--,space:·

let g:netrw_banner = 0
let g:netrw_liststyle = 3

vnoremap <C-x> :!termux-clipboard-set<CR>
vnoremap <C-c> :w !termux-clipboard-set<CR><CR>
inoremap <C-v> <ESC>:read !termux-clipboard-get<CR>i
