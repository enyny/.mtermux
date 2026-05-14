" =========================
" Common ~/.vimrc
" =========================

" Enable syntax highlighting
syntax on

" Enable filetype detection, plugins, and indentation
filetype plugin indent on

" Use UTF-8
set encoding=utf-8

" Show line numbers
set number
set relativenumber

" Highlight current line
set cursorline

" Better searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Better UI
set showcmd
set wildmenu
set showmatch
set ruler
set laststatus=2

" Mouse support
set mouse=a

" Enable clipboard sharing
set clipboard=unnamedplus

" Split behavior
set splitbelow
set splitright

" Keep some context while scrolling
set scrolloff=8
set sidescrolloff=8

" Better backspace behavior
set backspace=indent,eol,start

" Persistent undo
set undofile

" Enable hidden buffers
set hidden

" Faster updates
set updatetime=300

" Disable swap file
set noswapfile

" Better completion
set completeopt=menuone,noinsert,noselect

" True colors support
if has("termguicolors")
    set termguicolors
endif

" Leader key
let mapleader=" "

" Quick save
nnoremap <leader>w :w<CR>

" Quick quit
nnoremap <leader>q :q<CR>

" Clear search highlight
nnoremap <leader>h :nohlsearch<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize windows
nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Keep visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Better copy/paste
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" Auto reload files changed outside Vim
set autoread

" Enable persistent history
set history=1000

" Optional color scheme
colorscheme desert
