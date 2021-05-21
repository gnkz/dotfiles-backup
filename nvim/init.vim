lua <<EOF
require('plugins')
require('treesitter')
require('theme')
require('status')
require('settings')
EOF

" highlight Comment cterm=italic gui=italic

" Navigation
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" Buffers
nnoremap <silent> <C-K> :bnext<CR>
nnoremap <silent> <C-J> :bprev<CR>
nnoremap <silent> <leader>bd :bdelete<CR>

" Vim source
nnoremap <silent> <leader>so :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>ve :e ~/.config/nvim/init.vim<CR>

" Stuff
nnoremap <silent> <leader>nh :noh<CR>

" Yank
nnoremap <silent> <leader>y "+y
vnoremap <silent> <leader>y "+y
nnoremap <silent> <leader>Y gg"+yG
vnoremap <silent> <leader>Y gg"+yG

" FZF mappings
nnoremap <silent> <leader>pp <cmd>Files<CR>
nnoremap <silent> <leader>ps <cmd>Rg<CR>
nnoremap <silent> <leader>pb <cmd>Buffers<CR>
nnoremap <silent> <leader>pg <cmd>GFiles?<CR>
nnoremap <silent> <leader>co <cmd>GBranches<CR>
nnoremap <silent> <leader>// <cmd>BLines<CR>

" Fugitive mappings
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gP :G push<CR>
nnoremap <silent> <leader>gp :G pull<CR>

" Undotree mappings
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" CoC mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
vmap <silent><leader>a <Plug>(coc-codeaction-selected)
nmap <silent><leader>a <Plug>(coc-codeaction-selected)
nnoremap <silent><nowait> <leader>o :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <leader>d :<C-u>CocList diagnostics<cr>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Quick scope
highlight QuickScopePrimary guifg='#ff5fa4' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#ff5f5f' gui=underline ctermfg=81 cterm=underline

