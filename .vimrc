colorscheme desert
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'ervandew/supertab'
" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin
"
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
au BufNewFile,BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix
au BufNewFile,BufRead *.js,*.css,*.html
    \ set tabstop=2|
    \ set softtabstop=2|
    \ set shiftwidth=2|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix
Plugin 'vim-scripts/indentpython.vim'
highlight Search cterm=NONE ctermfg=grey ctermbg=white 
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
set nu 
"python with virtualenv support
"python3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
let python_hightlight_all=1
syntax on
"Enable folding
set foldmethod=indent
" case searhing stuffs
set ignorecase
set smartcase
set showmatch
set incsearch
set hlsearch
" move vertically by visual line
noremap j gj
noremap k gk

set foldlevel=99
nnoremap <space> za
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
call togglebg#map("<F5>")
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
autocmd FileType javascript set formatprg=prettier\ --stdin
