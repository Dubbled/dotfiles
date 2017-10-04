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
colorscheme industry 
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'
let g:deoplete#sources#go#use_cache = 1
syntax on
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set noswapfile
hi StatusLineNC ctermbg=gray ctermfg=black
hi StatusLine ctermbg=none ctermfg=red
hi VertSplit cterm=none ctermfg=red
hi LineNr ctermbg=none ctermfg=red
hi SpellBad ctermbg=red ctermfg=gray
