return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", branch = "0.5-compat"}
    -- use {"sheerun/vim-polyglot"}

    use {
        "lewis6991/gitsigns.nvim",
        requires = {"nvim-lua/plenary.nvim"},
        config = function() require("gitsigns").setup() end
    }

    use {
        "hoob3rt/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }

    use {"liuchengxu/vim-clap", run = ":Clap install-binary!"}

    use "tpope/vim-fugitive"

    -- use {"neoclide/coc.nvim", branch = "release"}
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"

    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-compe"
	use 'williamboman/nvim-lsp-installer'
    -- use "glepnir/lspsaga.nvim"
	use { 'tami5/lspsaga.nvim', branch = 'nvim51' }
    use "nvim-lua/lsp-status.nvim"

    use {"lukas-reineke/indent-blankline.nvim"}

    use "unblevable/quick-scope"

    use {
        "steelsojka/pears.nvim",
        config = function() require("pears").setup() end
    }

    use "b3nj5m1n/kommentary"

    use {
        "blackCauldron7/surround.nvim",
        config = function() require("surround").setup {} end
    }

    -- Theme
	use {
		"catppuccin/nvim",
		as = "catppuccin"
	}
end)
