local map = require"utils".map
local cmd = vim.cmd

-- Keymaps
map("n", "<leader>pp", "<cmd>Clap files<CR>", {silent = true})
map("n", "<leader>ps", "<cmd>Clap grep<CR>", {silent = true})
map("n", "<leader>pb", "<cmd>Clap buffers<CR>", {silent = true})
map("n", "<leader>pg", "<cmd>Clap gfiles<CR>", {silent = true})
map("n", "<leader>//", "<cmd>Clap blines<CR>", {silent = true})

-- Disable completion
cmd "augroup DisableClapOnCompe"
cmd "autocmd!"
cmd "autocmd FileType clap_input call compe#setup({ 'enabled': v:false }, 0)"
cmd "augroup END"
