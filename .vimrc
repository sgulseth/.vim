set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Colors
Plugin 'altercation/vim-colors-solarized'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
if executable('ack')
  Plugin 'mileszs/ack.vim'
endif

" Utils
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'bling/vim-bufferline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Langs
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

let g:bufferline_echo=0

source ~/.vim/.vimrc_neocomplcache

syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

set showmode
set showmatch
set nu
set cursorline

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
highlight clear CursorLineNr    " Remove highlight color from current line number

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

imap ii <esc>
set pastetoggle=<F2>

" for command mode
nnoremap <S-Tab> <<
" " for insert mode
inoremap <S-Tab> <C-d>

" Open Nerdtree default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Monokai theme
syntax enable
" colorscheme monokai


" Neocomplete

