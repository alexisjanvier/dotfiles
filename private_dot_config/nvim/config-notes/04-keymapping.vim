let mapleader=' '
                           " SPACE as Leader !
" Correction orthographique
nnoremap <Leader>zn ]s                              " go to the next error
nnoremap <Leader>zp [s                              " go to the previous error

nnoremap <Leader>ts :setlocal spell! spell? spelllang=fr<Return> " toogle spelling
" For memo
" zg 	Déclare le mot sous le curseur comme bon —good— et l'ajoute au dictionnaire
" zw 	Déclare le mot sous le curseur comme mauvais —wrong— et l'ajoute au dictionnaire
" zug 	Retire du dictionnaire le mot sous le curseur déclaré comme bon
" zuw 	Retire du dictionnaire le mot sous le curseur déclaré comme mauvais
" z= 	Demande à afficher les suggestions de correction

" -- NERDTREE --
map <silent> <C-b> :NERDTreeToggle<CR>      " NERDTree on ctrl+b
map <C-c> :BD<CR>                           " vim-buffkill
nnoremap <C-Right> :bnext<CR>               " vanillia vim buffer mapping
nnoremap <C-Left> :bprevious<CR>
map <Leader>r :NERDTreeFind<CR>             " Reveal current buffer in NERDTree with \r

" -- FZ
" search text in project with Alt+FF
nnoremap <A-f> :Ag<CR>
" search file in project with Ctrl+P
nnoremap <C-p> :Files<CR>

" -- vim-grammarous
" :nmap <F5> :GrammarousCheck --lang=fr<CR>
" :nmap <F6>(grammarous-fixit)
