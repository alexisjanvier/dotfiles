" -----------
" -- NERDTREE
" -----------
try
" Force NERDTree to open notes-book folder
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree ~/notes-book<CR>
let NERDTreeShowHidden=1
" Close NERDtree if last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$', '\.swp']
" Hide the Nerdtree status line to avoid clutter with Airline
let g:NERDTreeStatusline = 'Bloc notes'
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1 " Always show dot (hidden) files
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
let g:fzf_history_dir = '~/.local/share/fzf-notes-history'

" ----------
" -- VIMWIKI
" ----------

let g:vimwiki_list = [{'path': '~/notes-book/', 'syntax': 'markdown', 'ext': '.md', 'auto_toc': 1, 'index': 'index'}]
let g:vimwiki_folding = 'syntax'
"
" -------------------
" -- Markdown Preview
" -------------------

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'firefox'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 1,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
