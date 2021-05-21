return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf' }
  }

  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua'
  }

  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
  }

  use {
	'steelsojka/pears.nvim',
	config = function() require('pears').setup() end
  }

  use 'b3nj5m1n/kommentary'

  use {
	'blackCauldron7/surround.nvim',
	config = function() require('surround').setup {} end
  }

  -- Theme
  use 'folke/tokyonight.nvim'
end)
