local lsp_installer = require("nvim-lsp-installer")
local lsp_status = require("lsp-status")

require("null-ls").setup({
	sources = {
		require("null-ls").builtins.formatting.stylua,
	},
})

lsp_status.register_progress()

local function common_on_attach(client, bufnr)
	lsp_status.on_attach(client)
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

local lsp_config = {}

return lsp_config
