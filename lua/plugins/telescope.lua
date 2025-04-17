return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- lazy=false,
	-- priority = 999,
	lazy=true,
	event="VeryLazy",
	dependencies = { 'nvim-lua/plenary.nvim' }
}
