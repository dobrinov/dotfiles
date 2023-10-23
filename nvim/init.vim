" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'
Plug 'ervandew/supertab'
Plug 'janko-m/vim-test'
Plug 'shaunsingh/solarized.nvim'
call plug#end()

set shell=/bin/zsh

set mouse=a
set laststatus=2
set ttimeoutlen=50
set encoding=utf8
set ffs=unix,dos,mac
set autoread
set ruler
set smartcase
set hlsearch
set incsearch
set ignorecase
set lazyredraw

" Text, tab indent
set expandtab
set shiftwidth=2
set softtabstop=2
set guifont=JetBrains\ Mono:h20

" Theme
syntax enable
colorscheme solarized
set background=light

map <C-t> :vsp <bar> :terminal fish<CR>

" Nerd tree
map <C-n> :NERDTreeToggle<CR>

" FZF
map <C-p> :GFiles<CR>
map <C-f> :Ag<CR>

" Copy/Paste
vnoremap <C-c> "*y
vnoremap  C-v  "*p
vnoremap <C-x> "*x

" vim-test configuration
let test#strategy = "neovim"

tmap <C-o> <C-\><C-n>
map <silent> <leader>s :TestNearest<CR>
map <silent> <leader>t :TestFile<CR>
map <silent> <leader>a :TestSuite<CR>
map <silent> <leader>l :TestLast<CR>
map <silent> <leader>g :TestVisit<CR>
