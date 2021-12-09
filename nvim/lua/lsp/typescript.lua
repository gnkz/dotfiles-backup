local lsp_installer_servers = require'nvim-lsp-installer.servers'

local server_available, requested_server = lsp_installer_servers.get_server("tsserver")

if server_available then
    requested_server:on_ready(function ()
        local opts = {
			filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },

			on_attach = function(client, bufnr)
				client.resolved_capabilities.document_formatting = false
				require"lsp".common_on_attach(client, bufnr)
			end
		}
        requested_server:setup(opts)
    end)
    if not requested_server:is_installed() then
        -- Queue the server to be installed
        requested_server:install()
    end
end

