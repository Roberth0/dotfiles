call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'joshdick/onedark.vim'
    Plug 'flazz/vim-colorschemes'
    "Plug 'nathanaelkane/vim-indent-guides'
    Plug 'Yggdroot/indentLine'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix'} 
    Plug 'dominikduda/vim_current_word'
    Plug 'tpope/vim-commentary' 
    Plug 'mattn/emmet-vim'
    Plug 'alvan/vim-closetag'

call plug#end()
