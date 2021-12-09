local map = require"utils".map

function _G.check_back_space()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    return (col == 0 or vim.api.nvim_get_current_line():sub(col, col):match('%s')) and true
end

vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.cmdheight = 2

map("n", "gd", "<Plug>(coc-definition)", {silent = true, noremap = false})
map("n", "gy", "<Plug>(coc-type-definition)", {silent = true, noremap = false})
map("n", "gi", "<Plug>(coc-implementation)", {silent = true, noremap = false})
map("n", "ge", "<Plug>(coc-references)", {silent = true, noremap = false})
map("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true, noremap = false})
map("n", "<leader>a", "<Plug>(coc-codeaction-selected)", {silent = true, noremap = false})
map("n", "[d", "<Plug>(coc-diagnostic-prev)", {silent = true, noremap = false})
map("n", "]d", "<Plug>(coc-diagnostic-next)", {silent = true, noremap = false})
map("i", "<C-Space>", "coc#refresh()", {silent=true, expr=true})
map("i", "<CR>", "pumvisible() ? coc#_select_confirm() : \"\\<C-g>u\\<CR>\\<C-r>=coc#on_enter()\\<CR>\"", {silent=true, expr=true, noremap=false})
map("i", "<TAB>", "pumvisible() ? \"\\<C-n>\" : v:lua.check_back_space() ? \"\\<TAB>\" : coc#refresh()", {silent=true, expr=true})
map("i", "<S-TAB>", "pumvisible() ? \"\\<C-p>\" : \"\\<C-h>\"", {silent=true, expr=true})

