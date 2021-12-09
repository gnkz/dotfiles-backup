local lsp_installer = require("nvim-lsp-installer")
local lsp_status = require "lsp-status"
local saga = require "lspsaga"

lsp_status.register_progress()

function common_on_attach(client, bufnr) lsp_status.on_attach(client) end

lsp_installer.on_server_ready(function(server)
    local opts = {
		on_attach = common_on_attach,
	}

	if server.name == "eslint" then
    	opts.on_attach = function (client, bufnr)
            client.resolved_capabilities.document_formatting = true
            common_on_attach(client, bufnr)
        end
        opts.settings = {
            format = { enable = true }, -- this will enable formatting
        }
	end

	if server.name == 'tsserver' then
		opts.on_attach = function (client, bufnr)
			client.resolved_capabilities.document_formatting = false
			common_on_attach(client, bufnr)
		end
	end

    server:setup(opts)
end)

saga.init_lsp_saga()

local lsp_config = {}

return lsp_config
