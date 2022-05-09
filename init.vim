set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set guicursor=
set smartindent
set nu
set relativenumber
set nohlsearch
set noerrorbells
set incsearch
set scrolloff=8
set signcolumn=yes

call plug#begin("~/.vim/plugged")
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'gruvbox-community/gruvbox'
Plug 'Rigellute/shades-of-purple.vim'
call plug#end()

let mapleader = " "
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>

set termguicolors
syntax enable
colorscheme shades_of_purple

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
