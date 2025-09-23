local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('lua_ls',{
	capabilities = capabilities,
})
vim.lsp.config('clangd',{
	cmd={
		"clangd",
		"--query-driver=/usr/bin/clangd",
	},
	filetypes={"c","cpp"},
})
