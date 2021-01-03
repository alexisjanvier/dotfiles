" -----------
" -- NERDTREE
" -----------
try
autocmd VimEnter * exe 'NERDTree' argv()[0]
" Jump to the main window.
autocmd VimEnter * wincmd p
" Close NERDtree if last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$', '\.swp', '._sync_*']
let g:NERDTreeWinSize=35
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
catch
  echo 'Nerdtree is not installed. It should work after running :PlugInstall'
endtry

" ------
" -- FZF
" ------
"  Set search base path
autocmd VimEnter * cd ~/Notebook
let g:fzf_history_dir = '~/.local/share/fzf-nb-history'
command! FzSearch call fzf#vim#ag('', fzf#vim#with_preview({'dir': '~/Notebook'}))

" -----------
"  -- AIRLINE
"  ----------
try
let g:airline#extensions#tabline#enabled = 1        " Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='pencil'
let g:airline_exclude_preview = 1                   " Disable vim-airline in preview mode
let g:airline_highlighting_cache = 1                " Enable caching of syntax highlighting groups
catch
  echo 'Airline is not installed. It should work after running :PlugInstall'
endtry

" -----------
" -- MARKDOWN
" -----------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_new_list_item_indent = 0

" -------
" -- GOYO
" -------
let g:goyo_width = 121
" let g:goyo_height (default: 85%)
" let g:goyo_linenr (default: 0)

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  map <silent> <C-b> :Goyo<CR>      " Leave Goyo instead open Nerdtree
  " Limelight
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  map <silent> <C-b> :NERDTreeToggle<CR>      " NERDTree on ctrl+b
  " Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" -----------
" -- SPELLING
" -----------
let g:lexical#spelllang = ['fr']
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

" -----------
" -- PREVIEW (euclio/vim-markdown-composer)
" -----------
let g:markdown_composer_autostart = 0

" -----------
" -- GRAMMAROUS
" -----------
" set g:grammarous#show_first_error = 1
" set g:grammarous#use_location_list = 1

" -----------
" -- SNIPETS
" -----------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" Snipets directories
let g:UltiSnipsSnippetDirectories=["UltiSnips", "notepad_snippets"]

" Thesaurus Query
" let g:tq_language=['fr']
" let g:tq_enabled_backends = ["synonymo_fr", "cnrtl_fr"]
