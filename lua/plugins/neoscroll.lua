return {
	"karb94/neoscroll.nvim",
	lazy=true,
	event="User LightLoad",
	config = function ()
		require('neoscroll').setup({})
	end
}
