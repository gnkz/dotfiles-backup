local function setup_servers() require"lspinstall".setup() end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require"lspinstall".post_install_hook = function()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

local saga = require "lspsaga"
saga.init_lsp_saga()

local lsp_config = {}

local lsp_status = require "lsp-status"
lsp_status.register_progress()

function lsp_config.common_on_attach(client, bufnr)
    require"lsp_signature".on_attach()
    lsp_status.on_attach(client)
end

return lsp_config
