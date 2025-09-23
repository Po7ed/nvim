return {
	{
		"williamboman/mason.nvim",
		lazy=true,
		event="VeryLazy",
		version="^1.0.0",
		config=function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy=true,
		event="VeryLazy",
		version="^1.0.0",
		config=function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy=true,
		event="VeryLazy",
	},
}
