"Appearance 
syntax on
set t_Co=256
set number

"Tabs
set expandtab
set tabstop=4
retab
set shiftwidth=4

"Fix backspace
set backspace=2

"Search behavior
set hlsearch  "highlights search matches
set ignorecase "search is case sensitive only when search term has capital letter
set smartcase

" Scrolling
set scrolloff=10

"Splitting Windows
set splitbelow
set splitright

"key mappings
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
nmap ; :

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
" Vundle-required configuration
" To install Vundle:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" $ vim +PluginInstall +qall
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Plugins
Plugin 'gmarik/Vundle.vim'        " required
Plugin 'Valloric/YouCompleteMe'   " completion
Plugin 'tpope/vim-sleuth'         " smart indentation detection
Plugin 'kien/ctrlp.vim'           " ctrl-p
Plugin 'scrooloose/nerdtree'      " NERD Tree
Plugin 'bling/vim-airline'        " Airline
Plugin 'pangloss/vim-javascript' " Vim.javascript    
set laststatus=2
" call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <Space> :CtrlP<CR>

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion=1 "close scratch after completion selected

" Airline
set laststatus=2 " airline always on
"let g:airline_theme = 'solarized'
" set airline bar depending on BGCOLOR env var
if $BGCOLOR == 'light'
     let g:airline_solarized_bg = 'light' " explicitly set airline background color
else
     let g:airline_solarized_bg = 'dark'
endif

nnoremap T :NERDTree<CR>
