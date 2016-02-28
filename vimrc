set nocompatible              " be iMproved, required
filetype off                  " required
" Encoding
set enc=utf-8
set fileencoding=utf-8
" Color
set t_Co=256
" Edit in Empty line
set virtualedit=all

" prefer space instead of tab with a width of 2
set ts=2 sts=2 sw=2 expandtab
" Enable Mouse
set mouse=a
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Allow backspaces everywhere
set backspace=indent,eol,start
" keep 2 lines on the screen when scrolling
set scrolloff=2
" Here start the vundle section with the plugins
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'chase/vim-ansible-yaml'
Plugin 'honza/vim-snippets'

Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'

Plugin 'flazz/vim-colorschemes'

Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'


Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color scheme
color molokai
syntax on
filetype on
filetype indent on
filetype plugin on


let mapleader = " "
set helplang=de,en
let g:ctrlp_map='<c-p>'
" set runtimepath=~/.vim/thomas:$VIMRUNTIME
" This will enable the clipboard in vim
set clipboard=unnamed
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Line numbers
set number
" NerdTree: Mapping Leader-n to NerdTree
nnoremap <Leader>n :NERDTreeToggle<CR> 

" Needed for airline
set laststatus=2

" crosshair on and off
hi CursorLine   cterm=NONE ctermbg=235
hi CursorColumn cterm=NONE ctermbg=235
nmap <Leader>x :set cursorline! cursorcolumn!<CR>


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
