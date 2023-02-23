function CreateBranch()
	local branch_name
	vim.ui.input({ prompt = "Branch name:" }, function(input)
		branch_name = input
	end)

	vim.cmd("G checkout -b" .. branch_name)
	print(branch_name)
end

vim.cmd("command! CreateBranch lua CreateBranch()")

return {
	{
		"tpope/vim-fugitive",
		keys = {
			{ "<leader>gs", "<cmd>G<cr>", desc = "Git status" },
			{ "<leader>gd", "<cmd>Gdiff<cr>", desc = "Git diff" },
			{ "<leader>gb", "<cmd>G blame<cr>", desc = "Git blame" },
			{ "<leader>gP", "<cmd>G push<cr>", desc = "Git push" },
			{ "<leader>gp", "<cmd>G pull<cr>", desc = "Git pull" },
			{ "<leader>gcb", "<cmd>CreateBranch<cr>", desc = "Create branch" },
			{ "<leader>cvc", "<cmd>G commit --verbose<cr>", desc = "Git commit" },
		}
	}
}
