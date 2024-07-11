return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = true,
	-- event = "VeryLazy",
	keys =
	{
		{"<leader>ee","<cmd>NvimTreeToggle<cr>",desc="Toggle the Tree",silent=true},
		{"<leader>et","<cmd>NvimTreeToggle<cr>",desc="Toggle the Tree",silent=true},
		{"<leader>eo","<cmd>NvimTreeOpen<cr>",desc="Open the Tree",silent=true},
		{"<leader>ef","<cmd>NvimTreeFocus<cr>",desc="Tree Focus",silent=true}
	},
	dependencies = {
	  "nvim-tree/nvim-web-devicons",
	},
	config = function()
	  require("nvim-tree").setup {}
	end,
  }
