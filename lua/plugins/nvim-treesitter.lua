return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = true,
	event = "VeryLazy",
	config = function ()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python" },
			sync_install = false,
			highlight = { enable = true },
			-- indent = { enable = true },  
		})
	end
}
