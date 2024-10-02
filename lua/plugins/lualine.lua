return {
	"nvim-lualine/lualine.nvim",
	-- lazy=false,
	lazy=true,
	-- event="VeryLazy",
	event="User LightLoad",
	dependencies={'nvim-tree/nvim-web-devicons'},
	config=function()
		require('lualine').setup()
	end,
}
