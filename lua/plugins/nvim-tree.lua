return
{
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = true,
	cmd={"NvimTreeToggle","NvimTreeOpen","NvimTreeFocus"},
	event="CmdlineEnter",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup
		{
			respect_buf_cwd = true,
		}
	end,
}
