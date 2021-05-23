local map = require"utils".map

map("n", "<leader>gs", ":G<CR>", {silent = true})
map("n", "<leader>gd", ":Gdiff<CR>", {silent = true})
map("n", "<leader>gb", ":Gblame<CR>", {silent = true})
map("n", "<leader>gP", ":G push<CR>", {silent = true, nowait = true})
map("n", "<leader>gp", ":G pull<CR>", {silent = true, nowait = true})
