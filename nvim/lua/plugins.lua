return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Tree-sitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- Statusline
	use("feline-nvim/feline.nvim")
	use("kyazdani42/nvim-web-devicons")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- Git
	use("tpope/vim-fugitive")
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use({
		"danymat/neogen",
		config = function()
			require("neogen").setup({
				enabled = true,
			})
		end,
	})

	-- Snippets
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("rafamadriz/friendly-snippets")

	use("lukas-reineke/indent-blankline.nvim")

	use("windwp/nvim-autopairs")

	use("b3nj5m1n/kommentary")

	use({
		"echasnovski/mini.nvim",
		branch = "stable",
		config = function()
			require("mini.surround").setup({})
		end,
	})

	-- Theme
	use("EdenEast/nightfox.nvim")
end)
