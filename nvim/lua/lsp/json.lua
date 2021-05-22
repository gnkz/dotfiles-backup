require"lspconfig".json.setup {
    on_attach = function(client, bufnr)
        require"lsp".common_on_attach(client, bufnr)
    end
}

