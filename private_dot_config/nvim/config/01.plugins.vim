call plug#begin('~/.local/share/nvim/plugged')

" Plugin commun
Plug 'vim-airline/vim-airline'          " status/tabline https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes'   " papercolor for airline https://github.com/vim-airline/vim-airline-themes
Plug 'preservim/nerdtree'               " Side bar with file tree view https://github.com/preservim/nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'      " NERDTree showing git status https://github.com/Xuyuanp/nerdtree-git-plugin
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
Plug 'tpope/vim-fugitive'               " Git wrapper, execute git commant from vim

" IDE plugins
Plug 'NLKNguyen/papercolor-theme'       " Theme https://github.com/NLKNguyen/papercolor-theme
Plug 'airblade/vim-gitgutter'           " shows a git diff in the 'gutter' (sign column)
Plug 'Yggdroot/indentLine'              " indention with vertical lines https://github.com/Yggdroot/indentLine
Plug 'sheerun/vim-polyglot'             " A solid language pack for Vim https://github.com/sheerun/vim-polyglot
Plug 'dense-analysis/ale'               " Linter https://github.com/dense-analysis/ale
" Completion as in vscode https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-commentary'             " commentary.vim: comment stuff out https://github.com/tpope/vim-commentary
Plug 'editorconfig/editorconfig-vim'    " EditorConfig plugin for Vim  https://github.com/editorconfig/editorconfig-vim
Plug 'heavenshell/vim-jsdoc'            " Generate JSDoc for JavaScript https://github.com/heavenshell/vim-jsdoc
Plug 'xavierchow/vim-swagger-preview'   " Preview openapi contract with swagger https://github.com/xavierchow/vim-swagger-preview
Plug 'hsanson/vim-openapi'              " Detect OpenApi files https://github.com/hsanson/vim-openapi

" Initialize plugin system
call plug#end()
