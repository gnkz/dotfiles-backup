require"lspconfig".typescript.setup {
    on_attach = function(client, bufnr)
        require"lsp".common_on_attach(client, bufnr)
        client.resolved_capabilities.document_formatting = false
    end
}
