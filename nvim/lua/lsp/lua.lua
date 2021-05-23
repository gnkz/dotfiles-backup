require"lspconfig".lua.setup {
    on_attach = function(client, bufnr)
        require"lsp".common_on_attach(client, bufnr)
    end,
    settings = {
        Lua = {
            diagnostics = {globals = {"vim"}},
            runtime = {version = "LuaJIT", path = vim.split(package.path, ";")},
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                }
            }
        }
    }
}
