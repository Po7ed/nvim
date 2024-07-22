return {
	"akinsho/bufferline.nvim",
	-- lazy=true,
	-- event="User LightLoad",
	-- event="VeryLazy",
	-- event="BufRead",
	config=function()
		require('bufferline').setup{}
	end,
}
