return require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"json",
		"typescript",
		"javascript",
		"nix",
		"lua",
		"fish",
	},
	highlight = { enable = true },
	indentation = { enable = true },
})
