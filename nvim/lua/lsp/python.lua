require"lspconfig".python.setup {
	filetypes = { "python" },

    on_attach = function(client, bufnr)
        require"lsp".common_on_attach(client, bufnr)
    end
}
