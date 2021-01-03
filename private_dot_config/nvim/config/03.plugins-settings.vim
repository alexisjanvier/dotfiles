" -----------
" -- NERDTREE
" -----------
try
" Open nerdrtree automaticly when a directory is open with vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" NERDtree auto refresh on file save
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
" Close NERDtree if last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$', '\.swp']
" Hide the Nerdtree status line to avoid clutter with Airline
let g:NERDTreeStatusline = 'Files explorer'
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1 " Always show dot (hidden) files
"let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file
" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 0
let NERDTreeMapOpenExpl='E'                    " Colemak mapping
let NERDTreeMenuUp='e'                    " Colemak mapping
catch
  echo 'Nerdtree is not installed. It should work after running :PlugInstall'
endtry

" -----------
"  -- AIRLINE
"  ----------
try
let g:airline#extensions#tabline#enabled = 1        " Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline_exclude_preview = 1                   " Disable vim-airline in preview mode
let g:airline_highlighting_cache = 1                " Enable caching of syntax highlighting groups
let g:airline#extensions#ale#enabled = 1            " Airline will handle ALE linter errors and warnings.
catch
  echo 'Airline is not installed. It should work after running :PlugInstall'
endtry

" ------
" -- FZF
" ------
let g:fzf_history_dir = '~/.local/share/fzf-history'

" ----------------
"  -- vim-polyglot
"  ---------------
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

" --------------
"  -- ALE linter
"  -------------
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'svelte': ['eslint'],
\   'yaml': ['eslint'],
\   'php': ['phpcs'],
\   'c': ['gcc'],
\   'c++': ['g++'],
\}

let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'scss': ['prettier'],
 \ 'html': ['prettier'],
 \ 'svelte': ['prettier'],
 \ 'md': ['prettier'],
 \ 'json': ['prettier'],
 \ 'yaml': ['prettier'],
 \ 'php': ['php_cs_fixer'],
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_eslint_use_local_config = 1
let g:ale_php_phpcs_executable='/home/alexis/.composer/vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='/home/alexis/.composer/vendor/bin/php-cs-fixer'

" ------------
"  -- COC NVIM
"  -----------

" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" always show signcolumns
set signcolumn=yes

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

" ----------------
"  -- EditorConfig
"  ---------------
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" ------------------
" -- VIM-SORT-IMPORT
" ------------------
"let g:import_sort_auto = 0
