return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Tree-sitter
	use({ "nvim-treesitter/nvim-treesitter" })

	-- Statusline
	use("feline-nvim/feline.nvim")
	use("kyazdani42/nvim-web-devicons")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-github.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
		},
	})

	-- Git
	use("tpope/vim-fugitive")
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use("simrat39/rust-tools.nvim")
	use("folke/neodev.nvim")
	-- use("sbdchd/neoformat")
	use("https://git.sr.ht/~whynothugo/lsp_lines.nvim")

	-- Snippets
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("rafamadriz/friendly-snippets")

	-- Sessions
	use({
		"rmagatti/session-lens",
		requires = { "rmagatti/auto-session" },
		config = function()
			require("session-lens").setup({
				path_display = { "shorten" },
				previewer = true,
			})
		end,
	})

	use("lukas-reineke/indent-blankline.nvim")

	use("windwp/nvim-autopairs")

	use("phaazon/hop.nvim")

	use("b3nj5m1n/kommentary")

	use({
		"echasnovski/mini.nvim",
		branch = "stable",
		config = function()
			require("mini.surround").setup({})
		end,
	})

	-- Theme
	use("rebelot/kanagawa.nvim")

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup()
		end,
	})

	-- Orgmode
	use({ "nvim-orgmode/orgmode" })

	use({
		"lewis6991/impatient.nvim",
		config = function()
			require("impatient")
		end,
	})
end)

