call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'nsf/gocode', {'rtp': 'nvim/'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'rstacruz/vim-xtract'
call plug#end()
syntax on
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set noswapfile
hi StatusLineNC ctermbg=gray ctermfg=black
hi StatusLine ctermbg=none ctermfg=blue
hi VertSplit cterm=none ctermfg=blue
hi LineNr ctermbg=none ctermfg=blue
hi SpellBad ctermbg=blue ctermfg=gray
