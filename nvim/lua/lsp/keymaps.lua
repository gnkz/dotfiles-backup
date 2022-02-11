local map = require("utils").map

map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true })
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { silent = true })
map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", { silent = true })
map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", { silent = true })
map("n", "<leader>sh", "<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true })
