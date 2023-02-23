return {
	"lukas-reineke/indent-blankline.nvim",

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end

	},

	"b3nj5m1n/kommentary",

	{
		"echasnovski/mini.nvim",
		branch = "stable",
		config = function()
			require("mini.surround").setup({})
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup()
		end,
	},

	{
		"lewis6991/impatient.nvim",
		config = function()
			require("impatient")
		end,
	},
}
