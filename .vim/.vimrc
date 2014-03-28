set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tomasr/molokai'
Bundle 'rking/ag.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'davidhalter/jedi-vim'

let mapleader=","
colorscheme molokai





" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
" " ...
"
filetype plugin indent on     " required!
set modelines=0

augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
  au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
  autocmd FileType ruby,eruby,yaml,java,sh,javascript set sw=2 sts=2
  au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
augroup END


" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
" set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" No stupid backup files
set nobackup
set nowritebackup
set noswapfile

" Sensible settings for undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" search and replace settings
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


" line length settings
set wrap
set textwidth=79
set formatoptions=qrn1

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" sudoing!
cnoremap sudow w !sudo tee % >/dev/null
