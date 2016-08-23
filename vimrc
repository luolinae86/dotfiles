set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
syntax enable

filetype on               " Enable filetype detection
filetype indent on        " Enable filetype-specific indenting
filetype plugin indent on " Enable filetype-specific plugins

" NERDTree
" autocmd vimenter * NERDTree
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set nu
set hlsearch    " 查找时高亮
set incsearch   " 查找时实时高亮
set cursorline
set showcmd     " 状态栏显示目前执行的命令
set showmatch   " 显示括号配对情况
set background=dark
set tabstop=2 shiftwidth=2 expandtab

autocmd Filetype erb setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype go setlocal ts=4 sts=4 sw=4

colorscheme solarized

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
