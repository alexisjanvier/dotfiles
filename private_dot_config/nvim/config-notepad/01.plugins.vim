call plug#begin('~/.local/share/nvim/plugged-notepad')

" Plugin commun
Plug 'vim-airline/vim-airline'          " status/tabline https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes'   " papercolor for airline https://github.com/vim-airline/vim-airline-themes
Plug 'preservim/nerdtree'               " Side bar with file tree view https://github.com/preservim/nerdtree
Plug 'ryanoasis/vim-devicons'           " Icons for Nerdtree https://github.com/ryanoasis/vim-devicons
Plug 'qpkorr/vim-bufkill'               " Close buffer but not windows, usefull for nerdtree
Plug 'SirVer/ultisnips'                 " Manage snippets https://github.com/sirver/UltiSnips
Plug 'honza/vim-snippets'               " ultisnips deps
" File navigation, similar to Ctrl+p hotkey in vscode https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'               " Git wrapper, execute git commant from vim
Plug 'terryma/vim-multiple-cursors'     " multiple selections for Vim  https://github.com/terryma/vim-multiple-cursors
Plug 'tpope/vim-abolish'                " Change case camel, snake ... https://github.com/tpope/vim-abolish
Plug 'tpope/vim-repeat'                 " Repeat some plugin action https://github.com/tpope/vim-repeat
Plug 'tpope/vim-surround'               " quoting/parenthesizing made simple https://github.com/tpope/vim-surround

" NoteBook specific
Plug 'reedes/vim-colors-pencil'
Plug 'junegunn/goyo.vim'                " focus mode https://github.com/junegunn/goyo.vim
Plug 'junegunn/limelight.vim'           " Focus mode addons https://github.com/junegunn/limelight.vim
Plug 'pbrisbin/vim-mkdir'               " Automatically create any non-existent directories before writing the buffer
Plug 'reedes/vim-lexical'               " Build on Vim’s spell/thes/dict completion https://github.com/reedes/vim-lexical
" Plug 'Ron89/thesaurus_query.vim'        " Manage synonymes onlines if possible https://github.com/Ron89/thesaurus_query.vim
Plug 'rhysd/vim-grammarous'             " grammar checker for Vim using LanguageTool https://github.com/rhysd/vim-grammarous
" Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " https://github.com/plasticboy/vim-markdown
Plug 'godlygeek/tabular'                " vim-markdown deps
" Markdown preview in browser https://github.com/euclio/vim-markdown-composer
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" Initialize plugin system
call plug#end()
