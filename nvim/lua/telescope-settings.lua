local telescope = require("telescope")
local map = require("utils").map
local cmd = vim.cmd

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-B>"] = "git_create_branch",
			},
		},
	},
	pickers = {
		buffers = {
			ignore_current_buffer = true,
			sort_mru = true,
			sort_lastused = true,
		},
	},
})
telescope.load_extension("fzf")
telescope.load_extension("file_browser")

-- Keymaps
local defaults = { silent = true, noremap = true }
map("n", "<leader>ca", "<cmd>Telescope lsp_code_actions<cr>", defaults)
map("n", "gr", "<cmd>Telescope lsp_references<CR>", defaults)
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", defaults)
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", defaults)
map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", defaults)
map("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", defaults)
map("n", "<leader>ds", "<cmd>Telescope diagnostics<CR>", defaults)
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", defaults)
map("n", "<leader>pp", "<cmd>Telescope find_files<CR>", defaults)
map("n", "<leader>ps", "<cmd>Telescope live_grep<CR>", defaults)
map("n", "<leader>pb", "<cmd>Telescope buffers<CR>", defaults)
map("n", "<leader>pg", "<cmd>Telescope git_files<CR>", defaults)
map("n", "<leader>//", "<cmd>Telescope current_buffer_fuzzy_find<CR>", defaults)
