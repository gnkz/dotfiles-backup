local lsp_installer = require("nvim-lsp-installer")
local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.code_actions.gitsigns,
	},
})

local function common_on_attach(client, _)
	-- Do something
end

local servers = {
	"eslint",
	"tsserver",
	"dockerls",
	"yamlls",
	"sumneko_lua",
	"jsonls",
	"solidity_ls",
}

for _, name in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found and not server:is_installed() then
		print("Installing " .. name)
		server:install()
	end
end

lsp_installer.on_server_ready(function(server)
	local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
	local opts = {
		on_attach = common_on_attach,
		capabilities = capabilities,
	}

	if server.name == "sumneko_lua" then
		opts.on_attach = function(client, bufnr)
			client.resolved_capabilities.document_formatting = false
			common_on_attach(client, bufnr)
		end
		opts.settings = {
			Lua = {
				format = { enable = false },
			},
		}
	end

	if server.name == "eslint" then
		opts.on_attach = function(client, bufnr)
			client.resolved_capabilities.document_formatting = true
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
			common_on_attach(client, bufnr)
		end
		opts.settings = {
			format = { enable = true }, -- this will enable formatting
		}
	end

	if server.name == "tsserver" then
		opts.on_attach = function(client, bufnr)
			client.resolved_capabilities.document_formatting = false
			common_on_attach(client, bufnr)
		end
	end

	server:setup(opts)
end)
