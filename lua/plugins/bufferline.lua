return {
	"akinsho/bufferline.nvim",
	lazy=true,
	event="VimEnter",
	config=function()
		require('bufferline').setup{}
	end,
}
