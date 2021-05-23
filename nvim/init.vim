lua <<EOF
require('plugins')
require('treesitter')
require('theme')
require('status')
require('settings')
require('completition')
require('lsp')
require('lsp.typescript')
require('lsp.lua')
require('lsp.json')
require('lsp.efm')
require('fugitive')
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

" Stuff
nnoremap <silent> <leader>nh :noh<CR>

" Yank
nnoremap <silent> <leader>y "+y
vnoremap <silent> <leader>y "+y
nnoremap <silent> <leader>Y gg"+yG
vnoremap <silent> <leader>Y gg"+yG

" Clap mappings
nnoremap <silent> <leader>pp <cmd>Clap files<CR>
nnoremap <silent> <leader>ps <cmd>Clap grep<CR>
nnoremap <silent> <leader>pb <cmd>Clap buffers<CR>
nnoremap <silent> <leader>pg <cmd>Clap gfiles<CR>
nnoremap <silent> <leader>// <cmd>Clap blines<CR>

" CoC mappings
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" nmap <leader>rn <Plug>(coc-rename)
" xmap <leader>f <Plug>(coc-format-selected)
" nmap <leader>f <Plug>(coc-format-selected)
" vmap <silent><leader>a <Plug>(coc-codeaction-selected)
" nmap <silent><leader>a <Plug>(coc-codeaction-selected)
" nnoremap <silent><nowait> <leader>o :<C-u>CocList outline<cr>
" nnoremap <silent><nowait> <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>rn :Lspsaga rename<CR>
nnoremap <silent> <leader>pd :Lspsaga preview_definition<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>ca :Lspsaga code_action<CR>
nnoremap <silent> <leader>sh :Lspsaga hover_doc<CR>
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR> compe#confirm('<CR>')

" Quick scope
augroup QuickScopeColors
	autocmd!
	autocmd ColorScheme * highlight QuickScopePrimary guifg='#ff5fa4' gui=underline ctermfg=155 cterm=underline
	autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ff5f5f' gui=underline ctermfg=81 cterm=underline
augroup END

augroup DisableClapOnCompe
	autocmd!
	autocmd FileType clap_input call compe#setup({ 'enabled': v:false }, 0)
augroup END

