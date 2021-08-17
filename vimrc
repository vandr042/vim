execute pathogen#infect()

" filetype plugin indent on
syntax on
filetype on
set background=dark
colorscheme solarized
set guifont=Menlo\ Regular:h18
set number
map \s :source ~/.vimrc<CR>
set hidden
set history=100
filetype indent on

set relativenumber

" Company Copyright String
map :nv :0r ~/.vim/nvidia_copyright.txt

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR> 

" Tab settings
set nowrap
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start
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

" vim-note
vmap <leader>ns :NoteFromSelectedText<CR>

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

" vim-powerline
set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim/
set t_Co=256
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set showtabline=1
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized'
 
" syntastic
let g:syntastic_python_checkers = []
 " set statusline+=%#warningmsg#
 " set statusline+=%{SyntasticStatuslineFlag()}
 " set statusline+=%*
 
 " let g:syntastic_always_populate_loc_list = 1
 " let g:syntastic_auto_loc_list = 1
 " let g:syntastic_check_on_open = 1
 " let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ["flake8"]
 " let g:syntastic_python_python_exec = 'python3'
 
xnoremap . :norm . 
