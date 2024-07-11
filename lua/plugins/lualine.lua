return {
	"nvim-lualine/lualine.nvim",
	lazy=true,
	event="User LightLoad",
	dependencies={'nvim-tree/nvim-web-devicons'},
	config=function()
		require('lualine').setup()
	end,
}
