augroup FormatOnSave
	autocmd!
	autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
augroup END
