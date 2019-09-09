python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-bubblegum
Plugin 'baskerville/bubblegum'
" vim-fugitive
Plugin 'tpope/vim-fugitive'
" vim-gitgutter
Plugin 'airblade/vim-gitgutter'
" vim-NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" vim-tagbar
Plugin 'majutsushi/tagbar'
" vim-flake8
Plugin 'nvie/vim-flake8'
" vim-python-pep8-indent
Plugin 'hynek/vim-python-pep8-indent'
" jedi-vim
Plugin 'davidhalter/jedi-vim'
" vim-virtualenv
Plugin 'jmcantrell/vim-virtualenv'
" vim-licenses
Plugin 'antoyo/vim-licenses'
" vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" vim-syntastic
Plugin 'scrooloose/syntastic'
" vim-tbone
Plugin 'tpope/vim-tbone'
" tmuxline
Plugin 'edkolev/tmuxline.vim'
" Go
Plugin 'fatih/vim-go'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
let python_highlight_all=1
syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" set theme
set t_Co=256
set background=dark
set encoding=utf-8
colorscheme bubblegum-256-dark

" " show number lines the title of the window and the ruler
set number
set title
set ruler

" " highlight current line
set cursorline

" " show color column at 80
set colorcolumn=80

" disable swap files
set nobackup
set nowritebackup
set noswapfile

" highlight inc search
set hlsearch
set incsearch
" NERDTree
" " configure NERDTree to close if it's the last tab and maps
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-Right> :tabn<cr>
map <C-Left> :tabp<cr>
map <C-t> :tabnew<CR>

let g:syntastic_python_checkers = ['pylint']
