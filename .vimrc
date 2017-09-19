"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" aleonsan .vimrc file                                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " required
filetype off                  " required

" # Vundle plugin manager (required)
"   install from https://github.com/gmarik/Vundle.vim

"   set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"   let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"   My plugins
Plugin 'tmhedberg/SimpylFold'                                    " folding code
Plugin 'nvie/vim-flake8'                                         " pep8 checking
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " powerline
"Plugin 'scrooloose/nerdtree'     " file tree
"Plugin 'jistr/vim-nerdtree-tabs' " file tabs
"Plugin 'kien/ctrlp.vim'        " searching
"Plugin 'tpope/vim-fugitive'    " git integration
"Plugin 'Valloric/YouCompleteMe'                                  " autocomplete
"   End of My plugins

"   All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" # Python 
"   indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"   highlight whitespaces with blue
highlight BadWhitespace ctermbg=darkblue guibg=darkblue

" 80 column highlight
highlight EightyColumn ctermbg=darkyellow guibg=darkyellow

" 120 column highlight
highlight HundredTwentyColumn ctermbg=darkred guibg=darkred

" Set highlight
au BufNewFile,BufRead *.py 
    \ match BadWhitespace /\s\+$/ |
    \ 2match EightyColumn /\%>79v.*\%<81v/ 
"   \ 3match HundredTwentyColumn /\%>119v.*\%<121v/

"   code folding configuration
"   folding is enable with Plugin 'tmhedberg/SimpylFold'
set foldmethod=indent
set foldlevel=99

"   pretty highlighting
let python_highlight_all=1
syntax on

"   Nerdtree pyc files ignore
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Bash scripting
au BufNewFile,BufRead *.sh
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=119 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Set highlight
au BufNewFile,BufRead *.sh 
    \ match BadWhitespace /\s\+$/ |
"    \ 3match HundredTwentyColumn /\%>119v.*\%<121v/

" # Json 
"   indentation
au BufNewFile,BufRead *.json
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
