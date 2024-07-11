return {
	"akinsho/bufferline.nvim",
	lazy=true,
	event="User LightLoad",
	-- event="VeryLazy",
	config=function()
		require('bufferline').setup{}
	end,
}
