"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Show indentation guides
Plugin 'nathanaelkane/vim-indent-guides'
" Toggle indent guides by default
autocmd VimEnter * :IndentGuidesEnable
" Change guide size
let g:indent_guides_guide_size = 1

Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/syntastic'
Plugin 'gregsexton/gitv'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'wavded/vim-stylus'
Plugin 'tpope/vim-surround'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'fatih/vim-go'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'leafgarland/typescript-vim'
Plugin 'shougo/vimproc.vim'
Plugin 'quramy/tsuquyomi'
Plugin 'pangloss/vim-javascript'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'tpope/vim-sleuth'

Plugin 'klen/python-mode'
let g:pymode_breakpoint = 0
let g:pymode_folding = 0
let g:pymode_doc = 0
set completeopt=menu

" Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype detection
filetype plugin indent on

" Switch syntax highlighting on
syntax on

" Enable line numbers by default
set nu

" source .vimrc file from local directory if present
set exrc
set secure

" hide buffers instead of closing them
set hidden

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

" Set color scheme
colorscheme molokai

" highlight 120th column
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Automaticallty reload file after change outside editor
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INDENTATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be smart about when to do case sensitive search
set ignorecase
set smartcase

" do incremental searching
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUTS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap <Tab> :bnext<CR>
" nnoremap <S-Tab> :bprevious<CR>

" Go to previous tab
nnoremap <Tab> :b#<CR>

" Open file explorer (netrc)
nnoremap <Leader>f :Ex<CR>

" Autofix javascript
nnoremap <C-f> :!eslint --fix %<CR>

" Auto complete
set wildmenu
set wildmode=full
" set wildcharm=<C-z>
" nnoremap <C-Tab> :b <C-z>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LINTING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_html_checkers=['eslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWAP / BACKUP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup
set noswapfile

" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
" set undodir=~/.vim/undo//
