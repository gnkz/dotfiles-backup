return {
	{
		"feline-nvim/feline.nvim",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
		config = function()
			require("feline").setup({})
		end
	},
}
