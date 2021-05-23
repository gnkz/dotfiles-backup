local utils = require("utils")

utils.map("n", "<leader>gs", ":G<CR>", {silent = true})
utils.map("n", "<leader>gd", ":Gdiff<CR>", {silent = true})
utils.map("n", "<leader>gb", ":Gblame<CR>", {silent = true})
utils.map("n", "<leader>gP", ":G push<CR>", {silent = true})
utils.map("n", "<leader>gp", ":G pull<CR>", {silent = true})
