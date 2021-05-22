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

require"lspconfig".efm.setup {
    on_attach = function(client, bufnr)
        require"lsp".common_on_attach(client, bufnr)
    end,

    init_options = {documentFormatting = true, codeAction = true},

    filetypes = {"lua", "typescript", "json"},

    settings = {
        rootMarkers = {".git/"},
        languages = {lua = {luaFormat}, typescript = {eslint}, json = {jsonJq}}
    }
}

