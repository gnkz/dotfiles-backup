local cmd = vim.cmd

cmd("augroup QuickScopeColors")
cmd("autocmd!")
cmd("autocmd ColorScheme * highlight QuickScopePrimary guifg='#ff5fa4' gui=underline ctermfg=155 cterm=underline")
cmd("autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ff5f5f' gui=underline ctermfg=81 cterm=underline")
cmd("augroup END")
