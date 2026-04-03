return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	event = "VeryLazy",
	config = function ()
		local configs = require("nvim-treesitter.config")
		configs.setup({
			ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python", "markdown"},
			sync_install = false,
			highlight = { enable = true },
			-- indent = { enable = true },  
		})
	end
}
