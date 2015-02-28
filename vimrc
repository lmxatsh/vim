"setting from http://amix.dk/vim/vimrc.html
set history=700
set showcmd
let mapleader = ";"
let gmapleader = ";"
if has("gui_running")
        set guifont=Courier\ New
        colorscheme desert
endif


set so=7
set wildmenu
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set incsearch
set showmatch
set mat=2

syntax enable
colorscheme desert
set encoding=utf8
set nobackup
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap



autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set viminfo^=%

set laststatus=2
set statusline=\ File:\ %F%r%h\ %w\ \ Path:\ %{getcwd()}\ \ Line:\ %l
set number

" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk
"disable highlightj
noremap <silent><leader><cr> :noh<cr>
"toggle the spelling check
noremap <leader>ss :setlocal spell!<cr>
"toggle the case of the whole line
noremap <leader>tt g~~
"toggle the case of the single word
noremap <leader>t g~iw
"map :w!
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :wq<cr>
"tabedit the file in the same dir
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

