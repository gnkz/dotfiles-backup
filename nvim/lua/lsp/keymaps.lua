local map = require"utils".map

map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {silent = true})
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {silent = true})
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {silent = true})
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {silent = true})
map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", {silent = true})
map("n", "<leader>pd", "<cmd>Lspsaga preview_definition<CR>", {silent = true})
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true})
map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", {silent = true})
map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", {silent = true})
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {silent = true})
map("n", "<leader>sh", "<cmd>Lspsaga hover_doc<CR>", {silent = true})
map("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'",
    {silent = true, expr = true})
map("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'",
    {silent = true, expr = true})
map("i", "<C-Space>", "compe#complete()", {silent = true, expr = true})
map("i", "<CR>", "compe#confirm('<CR>')", {silent = true, expr = true})
