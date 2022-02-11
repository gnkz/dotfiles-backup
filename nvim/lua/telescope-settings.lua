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

-- Keymaps
map("n", "<leader>ca", "<cmd>Telescope lsp_code_actions<cr>", { silent = true })
map("n", "gr", "<cmd>Telescope lsp_references<CR>", { silent = true })
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { silent = true })
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { silent = true })
map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { silent = true })
map("n", "<leader>ds", "<cmd>Telescope diagnostics<CR>", { silent = true })
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { silent = true })
map("n", "<leader>pp", "<cmd>Telescope find_files<CR>", { silent = true })
map("n", "<leader>ps", "<cmd>Telescope live_grep<CR>", { silent = true })
map("n", "<leader>pb", "<cmd>Telescope buffers<CR>", { silent = true })
map("n", "<leader>pg", "<cmd>Telescope git_files<CR>", { silent = true })
map("n", "<leader>//", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { silent = true })
