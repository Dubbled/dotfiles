call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'nsf/gocode', {'rtp': 'nvim/'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'rstacruz/vim-xtract'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-go', {'do': 'make'}
call plug#end()
colorscheme delek
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'
let g:deoplete#sources#go#use_cache = 1
syntax on
set nu
set tabstop=4
set shiftwidth=4
set expandtab
hi StatusLineNC ctermbg=none ctermfg=white
hi StatusLine ctermbg=none ctermfg=cyan
hi VertSplit cterm=none ctermfg=cyan
hi LineNr ctermbg=none ctermfg=cyan
hi SpellBad ctermbg=cyan ctermfg=gray
