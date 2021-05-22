require"lspconfig".diagnosticls.setup {
    filetypes = {"javascript", "javascript.jsx", "typescript"},
    init_options = {
        filetypes = {
            javascript = "eslint",
            ["javascript.jsx"] = "eslint",
            javascriptreact = "eslint",
            typescriptreact = "eslint",
            typescript = "eslint"
        },
        linters = {
            eslint = {
                sourceName = "eslint",
                command = "eslint_d",
                rootPatterns = {".git"},
                debounce = 100,
                args = {
                    "--stdin", "--stdin-filename", "%filepath", "--format",
                    "json"
                },
                parseJson = {
                    errorsRoot = "[0].messages",
                    line = "line",
                    column = "column",
                    endLine = "endLine",
                    endColumn = "endColumn",
                    message = "${message} [${ruleId}]",
                    security = "severity"
                },
                securities = {[2] = "error", [1] = "warning"}
            }
        },
        formatters = {
            eslint = {
                sourceName = "eslint",
                rootPatterns = {".git"},
                command = "eslint_d",
                args = {
                    "--stdin", "--stdin-filename", "%filepath",
                    "--fix-to-stdout"
                }
            }
        },
        formatFiletypes = {typescript = "eslint"}
    }
}
