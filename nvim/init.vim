call plug#begin('~/.local/share/nvim/plugged')
Plug 'ekalinin/dockerfile.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'tag': '*', 'for': 'go' }
" Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'mhinz/vim-signify'
" Plug 'ncm2/ncm2'
" Plug 'ncm2/ncm2-go', { 'for': 'go' }
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'easymotion/vim-easymotion'
Plug 'roxma/nvim-yarp'
Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree'
" Plug 'sodapopcan/vim-twiggy'
Plug 'tomlion/vim-solidity', { 'for': 'solidity' }
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale', { 'do': ':UpdateRemotePlugins' }
Plug 'wincent/ferret'
" Plug 'morhetz/gruvbox'
" Plug 'majutsushi/tagbar'
Plug 'jparise/vim-graphql'
" Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ayu-theme/ayu-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
call plug#end()

" autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set hidden

let g:ale_typescript_tsserver_use_global = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
" let g:signify_realtime = 1
let g:jsx_ext_required = 1
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" set background=dark
let ayucolor="dark"
colorscheme ayu

let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'cocstatus': 'coc#status'
    \ },
    \ }

filetype on
syntax enable
filetype plugin indent on

set nocompatible
set mouse=a
set number
set cursorline
set encoding=utf-8
set wildmenu
set wildmode=longest,list,full
set autoindent
set smartindent
set incsearch
set hlsearch
" set autoread
set splitright
set splitbelow
set shortmess+=c
set tabstop=4
set shiftwidth=4
set expandtab
set visualbell 
set t_vb=
set belloff=all
set foldmethod=syntax

let mapleader = "\<Space>"

nnoremap <Space> <nop>
inoremap <c-c> <ESC>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap zz :update<cr>
inoremap <C-W> <Esc>:update<cr>gi
nnoremap <tab> gt
nnoremap <s-tab> gT
nnoremap <leader><BS> noh<cr>
map <C-f> :Files<CR>
map ; <Plug>(easymotion-next)
map , <Plug>(easymotion-prev)
nmap <C-o> O<Esc>j

" " Copy to clipboard
vnoremap  <leader>y "+y
nnoremap  <leader>Y "+yg_
nnoremap  <leader>y "+y
nnoremap  <leader>yy "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

