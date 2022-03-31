return require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"json",
		"typescript",
		"javascript",
		"nix",
		"lua",
		"fish",
		"solidity",
	},
	highlight = { enable = true },
	indent = { enable = true },
})
