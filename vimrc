" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Show line numbers
set nu

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Enable syntax highlighting
syntax enable

" ### Theme ####
let base16colorspace=256
set background=dark
colorscheme base16-monokai

" ### Text, tab and indent related ####
set expandtab
set shiftwidth=2
set softtabstop=2


" ### Plugins

