set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

syntax on
colorscheme murphy
set number
set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

set listchars=tab:→\ ,extends:>,precedes:<,trail:· ",eol:↓
set list

set ignorecase
set smartcase

set wildmenu
set wildmode=longest,list
"set completeopt=longest,menuone

filetype plugin indent on

execute pathogen#infect()

let mapleader=","
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <silent> <leader>h :set hlsearch!<CR>
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>T :NERDTreeClose<CR>
nnoremap \ ,

if has("win32")
    set backspace=indent,eol,start
    "set directory=$TEMP
endif

"Python 2.7
let $PATH .= ';' . $VIM . '\Python27'
let $PYTHONPATH = $VIM . '\Python27\Lib'
let $PYTHONPATH .= ';' . $VIM . '\Python27\DLLs'

"Pymode
let g:pymode_rope = 0

"Jedi vim
autocmd FileType python setlocal completeopt -=preview

"SuperTab
let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabContextDefaultCompletionType="<C-X><C-O>"
"let g:SuperTabLongestEnhanced=1
