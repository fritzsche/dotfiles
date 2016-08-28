set nocompatible              " be iMproved, required
filetype off                  " required
" set language to german
set langmenu=de_DE.UTF-8
language de_DE.UTF-8
" Encoding
set enc=utf-8
set fileencoding=utf-8
" Color
set t_Co=256
" Edit in Empty line
set virtualedit=all
set shell=/bin/sh
" remove delay when pressing ESC
set timeoutlen=1000 ttimeoutlen=0
" prevent the cursor moving back after returning
" from insert mode
"inoremap <silent> <Esc> <C-O>:stopinsert<CR>
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
" Dispatch is used by vim-go
Plugin 'tpope/vim-dispatch'
" Used by vim-go
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'AndrewRadev/splitjoin.vim'
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
Plugin 'ap/vim-css-color'

Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'Tpope/vim-commentary'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rake'
Plugin 'avakhov/vim-yaml'

Plugin 'danchoi/ri.vim'
Plugin 'mileszs/ack.vim'

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

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'


Plugin 'bronson/vim-trailing-whitespace'

Plugin 'rbgrouleff/bclose.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color scheme
color molokai
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

syntax on
filetype on
filetype indent on
filetype plugin on

"let g:airline_section_b = airline#section#create(['branch'])
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

let mapleader = " "
" Remap the open tag in the help to t as CTRL-] is difficult to reach on
" a german keyboard
nnoremap t <C-]>
" help language
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

set noswapfile
set hidden
set nowritebackup


" Lines with equal indent form a fold.
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
" Open all folds by default
set nofoldenable

"" make YCM compatible with UltiSnips (using supertab)
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"


 set completeopt-=preview
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim go
set autowrite
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
" Keybindings for run/build/test/coverage
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
" Go-def-split
autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)
autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)
autocmd FileType go nmap <Leader>dt <Plug>(go-def-tab)
" Open the relevant Godoc for the word under the cursor with <leader>gd or
" open it vertically with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
" open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
" rename
au FileType go nmap <Leader>e <Plug>(go-rename)
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
"
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
nmap <Leader>o :TagbarToggle<CR>

let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

let g:go_metalinter_autosave = 1

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

"let g:tagbar_ctags_bin='/usr/local/bin/ctags'

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
