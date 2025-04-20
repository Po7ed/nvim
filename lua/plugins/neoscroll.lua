return
{
	"karb94/neoscroll.nvim",
	lazy=true,
	event="VeryLazy",
	config = function ()
		require('neoscroll').setup({
			easing = "sine",
			-- duration_multiplier = 1.5,
		})
	end,
}
