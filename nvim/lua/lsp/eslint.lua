local lsp_installer_servers = require'nvim-lsp-installer.servers'

local server_available, requested_server = lsp_installer_servers.get_server("eslint")

if server_available then
    requested_server:on_ready(function ()
        local opts = {
			on_attach = function(client, bufnr)
				client.resolved_capabilities.document_formatting = true
				require"lsp".common_on_attach(client, bufnr)
			end,

			settings = {
				format = { enable = true },
			}
		}
        requested_server:setup(opts)
    end)
    if not requested_server:is_installed() then
        -- Queue the server to be installed
        requested_server:install()
    end
end

