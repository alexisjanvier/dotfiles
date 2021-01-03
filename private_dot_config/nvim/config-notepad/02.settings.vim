set nocompatible
filetype plugin indent on
set encoding=utf8
set scrolloff=5 " affiche au minimum 5 ligne autour du cursor en cas de scroll
set number

autocmd FileType markdown let g:indentLine_enabled=0 " avoid markdown formating for links

" RECHERCHE
set incsearch 	" surligne les résultats de la recherche pendant la frappe
set ignorecase  " ignore la case lors d'une recherche
set smartcase 	" sauf si la recherche comporte une majuscule
set hlsearch! 	" surligne ou pas les résultats de la recherche
nnoremap <F3> :set hlsearch!<CR>

" WARP
set wrap linebreak nolist

" THEME
set guifont=DroidSansMono\ Nerd\ Font\ 13
set termguicolors
set t_Co=256
set background=dark
colorscheme pencil

" ERREURS
set belloff=all
set noerrorbells 	" pas de beepdd

" MISC
set hidden  " allow to close unsaved buffer
let mapleader=' '   " SPACE as Leader !
set path=~/Notebook
