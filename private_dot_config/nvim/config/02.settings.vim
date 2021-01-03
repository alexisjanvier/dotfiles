set nocompatible
set encoding=utf8
filetype off
set number 	" numero de ligne
set ruler 	" affichage de la position du curseur
set wrap 	" coupe les lignes trops longues
set scrolloff=5 " affiche au minimum 5 ligne autour du cursor en cas de scroll

" INDENTATION
autocmd FileType markdown let g:indentLine_enabled=0 " avoid markdown formating for links
autocmd FileType json let g:indentLine_enabled=0 " avoid json formating
filetype plugin indent on " show existing tab with 4 spaces width
" Next tab configuration from https://vim.fandom.com/wiki/Converting_tabs_to_spaces
autocmd FileType * set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType yml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

" THEME
set guifont=DroidSansMono\ Nerd\ Font\ 13
set termguicolors
set t_Co=256
set background=dark
colorscheme PaperColor
syntax enable

" RECHERCHE
set incsearch 	" surligne les résultats de la recherche pendant la frappe
set ignorecase  " ignore la case lors d'une recherche
set smartcase 	" sauf si la recherche comporte une majuscule
set hlsearch! 	" surligne ou pas les résultats de la recherche
nnoremap <F3> :set hlsearch!<CR>

" ERREURS
set belloff=all
set noerrorbells 	" pas de beepdd

" MISC
set hidden  " allow to close unsaved buffer
let mapleader=' '   " SPACE as Leader !
