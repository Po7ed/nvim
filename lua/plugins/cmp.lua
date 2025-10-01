return
{
	{
		"L3MON4D3/LuaSnip",
		lazy=true,
		event="VeryLazy",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp"
	},
	{"hrsh7th/nvim-cmp",lazy=true,event="VeryLazy"},
	{"hrsh7th/cmp-nvim-lsp",lazy=true,event="VeryLazy"},
	{"saadparwaiz1/cmp_luasnip",lazy=true,event="VeryLazy"},
	{"rafamadriz/friendly-snippets",lazy=true,event="VeryLazy"},
	{"hrsh7th/cmp-path",lazy=true,event="VeryLazy"},
}
