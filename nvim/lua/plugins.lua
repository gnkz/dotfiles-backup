return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use("tpope/vim-fugitive")

	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")

	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("williamboman/nvim-lsp-installer")
	use("nvim-lua/lsp-status.nvim")
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })

	use({ "lukas-reineke/indent-blankline.nvim" })

	use("unblevable/quick-scope")

	use("windwp/nvim-autopairs")

	use("b3nj5m1n/kommentary")

	use({
		"blackCauldron7/surround.nvim",
		config = function()
			require("surround").setup({})
		end,
	})

	-- Theme
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})
end)
