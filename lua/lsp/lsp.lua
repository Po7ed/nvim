local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	capabilities = capabilities,
}
require("lspconfig").clangd.setup({
	cmd={
		"clangd",
		"--query-driver=/usr/bin/clangd",
	},
	filetypes={"c","cpp"},
})
