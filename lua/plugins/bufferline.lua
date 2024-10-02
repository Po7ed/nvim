return {
	"akinsho/bufferline.nvim",
	lazy = false,
	-- priority = 1000,
	-- lazy=true,
	-- event="User LightLoad",
	-- event="VeryLazy",
	-- event="BufRead",
	config=function()
		require('bufferline').setup{}
	end,
}
