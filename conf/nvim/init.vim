call plug#begin()

Plug 'fatih/vim-go'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'whatyouhide/vim-gotham'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
set tabstop=4
set shiftwidth=4
set nu
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let base16colorspace=256
let g:rehash256 = 1
colorscheme zellner
syntax on
