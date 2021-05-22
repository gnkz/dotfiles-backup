local eslint = {
    lintCommand = "/home/gsanchez/.npm-packages/bin/eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f(%l,%c): %tarning %m", "%f(%l,%c): %rror %m"},
    formatCommand = "/home/gsanchez/.npm-packages/bin/eslint_d --stdin --stdin-filename ${INPUT} --fix-to-stdout",
    formatStdin = true
}

local luaformat = {
    formatCommand = "/home/gsanchez/.luarocks/bin/lua-format -i --single-quote-to-double-quote",
    formatStdin = true
}

require"lspconfig".efm.setup {
    on_attach = function(client, bufnr)
        require"lsp".common_on_attach(client, bufnr)
    end,

    init_options = {documentFormatting = true, codeAction = true},

    filetypes = {"lua", "typescript"},

    settings = {
        rootMarkers = {".git/"},
        logFile = "/home/gsanchez/efm.log",
        logLevel = 1,
        languages = {lua = {luaformat}, typescript = {eslint}}
    }
}

