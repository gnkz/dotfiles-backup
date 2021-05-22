return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Post-install/update hook with neovim command
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    -- Use dependency and run lua function after load
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

    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-compe"
    use "kabouzeid/nvim-lspinstall"
    use "glepnir/lspsaga.nvim"
    use "ray-x/lsp_signature.nvim"
    use "nvim-lua/lsp-status.nvim"

    use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}

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
    use "folke/tokyonight.nvim"
end)
