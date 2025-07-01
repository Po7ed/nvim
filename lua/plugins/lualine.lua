return {
	"nvim-lualine/lualine.nvim",
	lazy=true,
	event="VeryLazy",
	dependencies={'nvim-tree/nvim-web-devicons'},
	config=function()
		require('lualine').setup
		{
			options = { disabled_filetypes = {'dashboard'},theme = 'tokyonight' }
		}
	end,
}
