call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'benekastah/neomake'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'sbdchd/neoformat'
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips'
Plug 'chrisbra/NrrwRgn'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
let g:deoplete#enable_at_startup = 1
""Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
set nu
set encoding=utf-8
set showcmd
set backspace=indent,eol,start
syntax on " turn on syntax highlighting
syntax enable  " enable syntax processing
set tabstop=2  " number of spaces per tab when display
set softtabstop=2 " number of spaces to tabs when editing
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set cindent
set number
filetype indent on " load filetype-specific indent files
" " Ignoring case is a fun trick while searching
set ignorecase
set smartcase
set showmatch " hightlight matching [({)}]
"
set incsearch " searches as the characters are inserted
set hlsearch  " highlight searches
"
" " move vertically by visual line
noremap j gj
noremap k gk
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set background="dark"
colorscheme zellner
"
" " fold
set foldmethod=indent
hi Folded ctermfg=Black
autocmd FileType javascript set formatprg=prettier\ --stdin
hi Folded ctermbg=DarkGrey
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
  augroup END
