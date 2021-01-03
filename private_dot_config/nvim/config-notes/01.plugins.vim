call plug#begin('~/.local/share/nvim/plugged-notes')

Plug 'NLKNguyen/papercolor-theme'       " Theme https://github.com/NLKNguyen/papercolor-theme
Plug 'preservim/nerdtree'               " Side bar with file tree view https://github.com/preservim/nerdtree
Plug 'qpkorr/vim-bufkill'               " Close buffer but not windows, usefull for nerdtree
Plug 'vim-airline/vim-airline'          " status/tabline https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes'   " papercolor for airline https://github.com/vim-airline/vim-airline-themes
Plug 'Yggdroot/indentLine'              " indention with vertical lines https://github.com/Yggdroot/indentLine

" File navigation, similar to Ctrl+p hotkey in vscode https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'               " quoting/parenthesizing made simple https://github.com/tpope/vim-surround

Plug 'vimwiki/vimwiki'                  " Personal Wiki for Vim http://vimwiki.github.io/

Plug 'rhysd/vim-grammarous'             " grammar checker https://github.com/rhysd/vim-grammarous

" Preview Markdown in browser https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Initialize plugin system
call plug#end()
