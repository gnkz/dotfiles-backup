require("nvim-treesitter.parsers").get_parser_configs().solidity = {
	install_info = {
		url = "https://github.com/JoranHonig/tree-sitter-solidity",
		files = { "src/parser.c" },
		requires_generate_from_grammar = true,
	},
	filetype = "solidity",
}

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
	indentation = { enable = true },
})
