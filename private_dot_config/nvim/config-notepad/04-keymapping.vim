" ;; comme esc / Les ; sont rarement utilises l’un a la suite de l’autre
:imap ;; <Esc>
:map ;; <Esc>

" ---------------------------
" -- Correction othographique
" ---------------------------

" vim lexical
let g:lexical#spell_key = 'co'
" Ajouter le mot comme valide (mot valide)
nnoremap mv zg
" Retirer le mot du dictionnaire des mots valides (mot invalide)
nnoremap mi zw
" Erreur suivante 
nnoremap es ]s
" Erreur précendante
nnoremap ep [s
" Spelling For memo
" zg 	Déclare le mot sous le curseur comme bon —good— et l'ajoute au dictionnaire
" zw 	Déclare le mot sous le curseur comme mauvais —wrong— et l'ajoute au dictionnaire
" zug 	Retire du dictionnaire le mot sous le curseur déclaré comme bon
" zuw 	Retire du dictionnaire le mot sous le curseur déclaré comme mauvais
" z= 	Demande à afficher les suggestions de correction

" Grammarous
" Correction grammaire
nnoremap cg :GrammarousCheck --lang=fr<CR>
" Corrextion grammaire fin
nnoremap cgf :GrammarousReset<CR>

" Thesaurus Query (synonymes)
" nnoremap <Leader>cs :ThesaurusQueryReplaceCurrentWord<CR>
" vnoremap <Leader>cs y:ThesaurusQueryReplace <C-r>"<CR>

" ----------
" -- Preview
" ----------
" previsualisation demmarage
nnoremap <silent> <Leader>pd :ComposerStart<CR>
" previsualisation ouvrir
nnoremap <silent> <Leader>po :ComposerUpdate<CR>


" ----------
" -- Markdown
" ----------
"  For memo
" zr: reduces fold level throughout the buffer
" zR: opens all folds
" zm: increases fold level throughout the buffer
" zM: folds everything all the way
" za: open a fold your cursor is on
" zA: open a fold your cursor is on recursively
" zc: close a fold your cursor is on
" zC: close a fold your cursor is on recursively
" gx: open the link under the cursor in the same browser as the standard
" ge: open the link under the cursor in Vim for editing. Useful for relative markdown links. <Plug>Markdown_EditUrlUnderCursor
" ]]: go to next header. <Plug>Markdown_MoveToNextHeader
" [[: go to previous header. Contrast with ]c. <Plug>Markdown_MoveToPreviousHeader
" ][: go to next sibling header if any. <Plug>Markdown_MoveToNextSiblingHeader
" []: go to previous sibling header if any. <Plug>Markdown_MoveToPreviousSiblingHeader
" ]c: go to Current header. <Plug>Markdown_MoveToCurHeader
" ]u: go to parent header (Up). <Plug>Markdown_MoveToParentHeader
" :TableFormat: Format the table under the cursor like this.
" :Toc: create a quickfix vertical window navigable table of contents with the headers.
" :Tocv: Same as :Toc for symmetry with :Toch and :Tocv.
" :InsertToc: Insert table of contents at the current line.

" Abolish / Coercion
" MixedCase (crm)
" camelCase (crc)
" snake_case (crs)
" UPPER_CASE (cru)
" dash-case (cr-)
" dot.case (cr.)
" space case (cr<space>)
" Title Case (crt)

" -- Goyo --
" start Goyo on space fo
" focus
map <silent> fo :Goyo<CR>

" -- NERDTREE --
" NERDTree on ctrl+b
map <silent> <C-b> :NERDTreeToggle<CR>
" vim-buffkill
map <C-c> :BD<CR>
" vanillia vim buffer mapping
nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left> :bprevious<CR>
" Reveal current buffer in NERDTree with space r
map <Leader>r :NERDTreeFind<CR>             

" -- FZ
" search file in project with Ctrl+p
nnoremap <C-p> :Files<CR>
" search work in project's files with Ctrl+s
nnoremap <C-s> :FzSearch<CR>
