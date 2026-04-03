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
			git = {
				enable = true,
			},
			renderer = {
				icons = {
					show = {
						git = true,
					},
					glyphs = {
						git = {
							unstaged  = "",
							staged    = "󰱒",
							unmerged  = "",
							renamed   = "",
							untracked = "",
							deleted   = "",
							ignored   = "",
						},
					},
				},
			},
			respect_buf_cwd = true,
		}
	end,
}
