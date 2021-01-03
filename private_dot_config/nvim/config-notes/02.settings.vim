set nocompatible
set encoding=utf8
filetype off
set number 	" numero de ligne
set ruler 	" affichage de la position du curseur
set wrap 	" coupe les lignes trops longues
set scrolloff=5 " affiche au minimum 5 ligne autour du cursor en cas de scroll

autocmd FileType markdown let g:indentLine_enabled=0 " avoid markdown formating for links vrom neovim

" THEME
set guifont=DroidSansMono\ Nerd\ Font\ 13
set termguicolors
set t_Co=256
set background=dark
colorscheme PaperColor
syntax enable

" Remap leader key to ,
" let g:mapleader=','
" Automatically re-read file if a change was detected outside of vim
" set autoread

" RECHERCHE
"set incsearch 	" surligne les résultats de la recherche pendant la frappe
"set ignorecase " ignore la case lors d'une recherche
"set smartcase 	" sauf si la recherche comporte une majuscule
"set hlsearch 	" surligne les résultats de la recherche
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" ERREURS
set belloff=all
set noerrorbells 	" pas de beepdd

" CLAVIER
" ;; comme esc / Les ; sont rarement utilises l’un a la suite de l’autre
:imap ;; <Esc>
:map ;; <Esc>
filetype plugin indent on " show existing tab with 4 spaces width
set tabstop=4 " when indenting with '>', use 4 spaces width
set shiftwidth=4 " On pressing tab, insert 4 spaces
set expandtab
" Do not use arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" MISC
set hidden  " allow to close unsaved buffer

" CORRECTION ORTHOGRAPHIQUE
setlocal spell
setlocal spelllang=fr
setlocal spellfile=$HOME/.config/nvim/spell/fr.utf-8.add
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi SpellBad   cterm=underline ctermfg=9  ctermbg=0 gui=undercurl
hi SpellCap   cterm=underline ctermfg=14 ctermbg=0 gui=undercurl
hi SpellRare  cterm=underline ctermfg=13 ctermbg=0 gui=undercurl
hi SpellLocal cterm=underline ctermfg=11 ctermbg=0 gui=undercurl
