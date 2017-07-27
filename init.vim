call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
" Plug 'mhinz/vim-signify'
  Plug 'jreybert/vimagit'
  Plug 'tpope/vim-fugitive'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'rakr/vim-one'
  Plug 'valloric/MatchTagAlways'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'
  Plug 'easymotion/vim-easymotion'
  Plug 'ap/vim-css-color'
call plug#end()



syntax on
colorscheme one
let mapleader = "\<Space>"



"""""""""""""
"
" NERDTree
"
"""""""""""""
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1



"""""""""""""""""
"
" junegunn/fzf
"
"""""""""""""""""
nnoremap <silent> <leader><tab> :Files<CR>
imap <C-c> <CR><Esc>O
let $FZF_DEFAULT_COMMAND = 'ag -g ""'



""""""""""""
"
" vim-closetag
"
""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*jsx'



"""""""""""""
"
" vim-jsx
"
""""""""""""
let g:jsx_ext_required = 0 " Let vim-jsx handle JSX in `.js` files.
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript.jsx' : 1,
    \ 'jinja' : 1,
    \ 'liquid' : 1,
    \ 'markdown' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \}



""""""""""""""""""
"
" vim-easymotion
"
""""""""""""""""""
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w :w<CR>
map <Leader>q :q<CR>
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature



"""""""""""""""""""
"
" vim-javascript
"
""""""""""""""""""
let g:javascript_plugin_jsdoc = 1



""""""""""""""
"
" VARS
"
""""""""""""""
set showcmd             " Show (partial) command in status line
set showmatch           " Show matching brackets.
set number 		          " Show line number
set relativenumber      " Make relative line number
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set scrolloff=9999      " keep cursor at the center of the screen
set background=dark     " dark colorscheme One
set expandtab           " Convert tabs to the spaces
set tabstop=2           " 2 spaces
set shiftwidth=2        " 2 spaces
set showmatch           " show match brackets
set termguicolors       " enable True color
set splitbelow          " open new split below
set splitright          " open new split right
set autoread


"""""""""""
"
" COLORS
"
"""""""""""
hi Pmenu ctermfg=NONE ctermbg=241 cterm=NONE guifg=NONE guibg=#64697a gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=105 cterm=NONE guifg=NONE guibg=#95bc07 gui=NONE
hi MatchParen cterm=bold ctermbg=green ctermfg=blue



"""""""""""
"
" KEYMAP
"
"""""""""""
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <esc> :noh<return><esc>

