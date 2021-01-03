" Mapping Colemak
:imap \\ <Esc>
:map \\ <Esc>
noremap n j
noremap e k
noremap i l
noremap k n
noremap ' i
noremap j e

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

"  -- ALE linter
nmap <F6> <Plug>(ale_fix)                   " fix js syntaxe with F6

"  -- COC NVIM
inoremap <silent><expr> <c-!> coc#refresh()             " Use ctrl+! to trigger completion.
nmap <silent> <leader>gd <Plug>(coc-definition)         " Use \gd to go to definition.
nmap <silent> <leader>gr <Plug>(coc-references)         " Use \gr to go to reference.
nmap <silent> <leader>gi <Plug>(coc-implementation)     " Use \gi to go to implementation.
"nnoremap <silent> K :call <SID>show_documentation()<CR> " Use K for show documentation in preview window see plug conf
imap <C-l> <Plug>(coc-snippets-expand)                  " Use <C-l> for trigger snippet expand.
vmap <C-j> <Plug>(coc-snippets-select)                  " Use <C-j> for select text for visual placeholder of snippet.
imap <C-j> <Plug>(coc-snippets-expand-jump)             " Use <C-j> for both expand and jump (make expand higher priority.)

"  -- VIM-JSDOC
" Generate jsdoc for function under cursor
nmap <leader>jsd :JsDoc<CR>
nmap <silent> <C-d> <Plug>(jsdoc)

" -- Vim Swagger Preview
nmap <unique> <leader>oa <Plug>GenerateDiagram 


" -- vim-import-js
" <Leader>j 	:ImportJSWord 	Import the module for the variable under the cursor.
" <Leader>i 	:ImportJSFix 	Import any missing modules and remove any modules that are not used.
" <Leader>g 	:ImportJSGoto 	Go to the module of the variable under the cursor.

" -- vim-multiple-cursors
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'
