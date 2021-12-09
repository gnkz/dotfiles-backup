local lsp_installer_servers = require'nvim-lsp-installer.servers'

local eslint = {
    lintCommand = "eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f(%l,%c): %tarning %m", "%f(%l,%c): %rror %m"},
    formatCommand = "eslint_d --stdin --stdin-filename ${INPUT} --fix-to-stdout",
    formatStdin = true
}

local luaFormat = {
    formatCommand = "lua-format -i --single-quote-to-double-quote",
    formatStdin = true
}

local jsonJq = {formatCommand = "jq .", formatStdin = true}

local server_available, requested_server = lsp_installer_servers.get_server("efm")
if server_available then
    requested_server:on_ready(function ()
        local opts = {
			init_options = {documentFormatting = true, codeAction = true},

			filetypes = {"lua", "typescript", "json"},

			settings = {
				rootMarkers = {".git/"},
				languages = {lua = {luaFormat}, typescript = {eslint}, json = {jsonJq}}
			}
		}
        requested_server:setup(opts)
    end)
    if not requested_server:is_installed() then
        -- Queue the server to be installed
        requested_server:install()
    end
end

