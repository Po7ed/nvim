return
{
	"karb94/neoscroll.nvim",
	lazy=true,
	event="VeryLazy",
	config = function ()
		require('neoscroll').setup({
			easing = "quadratic",
			-- duration_multiplier = 0.75,
		})
	end,
}
