" Most of the file copied from Addy's - I only know how to exit Vim

" Allow cursor keys in insert mode
set esckeys

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Enable syntax highlighting
syntax on

" Make tabs as wide as two spaces
set tabstop=2

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Add the g flag to search/replace by default
set gdefault

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Use same buffer as OS
set clipboard=unnamed
