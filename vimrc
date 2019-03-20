execute pathogen#infect()

filetype on
syntax on
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
set number
map \s :source ~/.vimrc<CR>
set hidden
set history=100
filetype indent on

" Tab settings
set nowrap
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap \\ :e#<CR>
set showmatch

" NerdTree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Python file settings
autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
