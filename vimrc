set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'The-NERD-tree'
Plugin 'Syntastic'
Plugin 'fugitive.vim'
Plugin 'delimitMate.vim'
" Plugin 'eagletmt/neco-ghc'
Plugin 'vim-scripts/Solarized'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " require
d
set backspace=indent,eol,start  " more powerful backspacing
" Now we set some defaults for the editor
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

set number " Line numbers

augroup resCur
  " Always start with the cursor in it's previous position on the same file.
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" Set Solarized Dark
if has('gui_running')
    set background=dark
    colorscheme solarized
endif
