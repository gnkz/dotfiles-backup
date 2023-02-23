require("neodev").setup({})

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
		},
	},
})

local masonconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local null_ls = require("null-ls")

local servers = {
	"eslint",
	"tsserver",
	"dockerls",
	"yamlls",
	"sumneko_lua",
	"jsonls",
	"rust_analyzer"
	-- "solc",
	-- "solidity"
}

masonconfig.setup({
	ensure_installed = servers,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local function common_on_attach(client, _)
	client.config.capabilities = capabilities
end

masonconfig.setup_handlers({
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({})
	end,
	["sumneko_lua"] = function()
		lspconfig.sumneko_lua.setup({
			settings = {
				Lua = {
					format = {
						enable = true,
						defaultConfig = {
							quote_style = "double"
						}
					}
				}
			}
		})
	end,
	["eslint"] = function()
		local augroup = vim.api.nvim_create_augroup("EslintFormatting", {})
		lspconfig.eslint.setup({
			on_attach = function(client, bufnr)
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				client.server_capabilities.documentFormattingProvider = true
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({
							bufnr = bufnr
						})
					end,
				})
				-- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
				common_on_attach(client, bufnr)
			end,
			settings = {
				format = { enable = false },
			},
		})
	end,
	["tsserver"] = function()
		lspconfig.tsserver.setup({
			on_attach = function(client, bufnr)
				client.server_capabilities.documentFormattingProvider = false
				common_on_attach(client, bufnr)
			end,
		})
	end,
	["rust_analyzer"] = function()
		require("rust-tools").setup({})
		lspconfig.rust_analyzer.setup({
			on_attach = function (client, bufnr)
				common_on_attach(client, bufnr)
			end
		})
	end,
	--[[ ["solang"] = function()
		lspconfig.solang.setup({})
	end, ]]
	--[[ ["solc"] = function()
		lspconfig.solc.setup({})
	end, ]]
	--[[ ["solidity"] = function()
		lspconfig.solidity.setup({})
	end, ]]
})

null_ls.setup({
	sources = {
		null_ls.builtins.code_actions.gitsigns,
	},
})

require("lsp_lines").setup()

vim.diagnostic.config({
	virtual_text = false,
})
