return {
	"nmac427/guess-indent.nvim",
	lazy=true,
	event="User LightLoad",
	config=function()
		require('guess-indent').setup{}
	end,
}
