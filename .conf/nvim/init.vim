"FIX CURSOR BUG
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
set guicursor =


"PLUGINS
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    "Fuzzy Finder
Plug 'junegunn/fzf.vim'     "Fuzzy Finder
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }  "Nerd Tree is a File Tree Plugin
Plug 'phanviet/vim-monokai-pro'   "Install Monokai-Pro theme
Plug 'w0ng/vim-hybrid'   "Install hybrid theme
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } "Prettier
Plug 'mxw/vim-jsx'   "Install jsx syntax
Plug 'benmills/vimux' "tmux plugin for vim
Plug 'sickill/vim-pasta'  "identation aware pastingo
" Language-Specific Configuration {{{
    " html / templates {{{
        " emmet support for vim - easily create markdup wth CSS-like syntax
        Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript.jsx']}
        let g:user_emmet_settings = {
        \  'javascript.jsx': {
        \      'extends': 'jsx',
        \  },
        \}

        " match tags in html, similar to paren support
        Plug 'gregsexton/MatchTag', { 'for': 'html' }

        " html5 support
        Plug 'othree/html5.vim', { 'for': 'html' }

    " }}}

    " JavaScript {{{
        Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
        " Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }
        Plug 'moll/vim-node', { 'for': 'javascript' }
        Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] }
        Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
    " }}}

    " TypeScript {{{
        Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
        Plug 'Shougo/vimproc.vim', { 'do': 'make' }

        Plug 'mhartington/nvim-typescript', { 'for': 'typescript', 'do': './install.sh' }
        let g:nvim_typescript#diagnostics_enable = 0
        let g:nvim_typescript#max_completion_detail=100
    " }}}


    " Styles {{{
        Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
        Plug 'groenewege/vim-less', { 'for': 'less' }
        Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
        Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
        Plug 'gko/vim-coloresque'
        Plug 'stephenway/postcss.vim', { 'for': 'css' }
    " }}}

    " JSON {{{
        Plug 'elzr/vim-json', { 'for': 'json' }
        let g:vim_json_syntax_conceal = 0
    " }}}


call plug#end()


"REMAPS
"remap leader key from backslash (\) to comma
let mapleader = ','
"line bellow remaps ctrl+p to fzf fuzzy finder plugin
nnoremap <C-p> :FZF<CR>
"easier split navigation with ctrl+directional
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" shortcut to save
nmap <leader>, :w<cr> 
" shortcut to save and quit
nmap <leader>w :wq<cr> 
" shortcut to quit
nmap <leader>qq :q<cr> 
" Edit vimrc
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
map <leader>etmux :e! ~/.tmux.conf<cr>
nmap <leader>t :NERDTreeToggle<CR>
"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>

"THEME
set background=dark
colorscheme hybrid

"TAB STYLING
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
filetype indent on      " load filetype-specific indent files
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking


"UI CONFIG
set relativenumber " show line numbers hybrid mode
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
" Open new split panes to right and bottom, which feels more natural
" set splitbelow
set splitright

"SEARCH
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter


"BACKUPS
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
