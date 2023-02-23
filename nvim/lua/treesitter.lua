require("orgmode").setup_ts_grammar()

return require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"json",
		"typescript",
		"javascript",
		"nix",
		"lua",
		"fish",
		"solidity",
		"org",
	},
	highlight = { enable = true, disable = { "org" }, additional_vim_regex_highlighting = { "org" } },
	-- indent = { enable = true, disable = { "typescript", "javascript", "org" } },
})
