return {
	"folke/noice.nvim",
	event = "VeryLazy",
	-- version = "v4.9.0",
	opts = {
		routes = {
			{
				filter = {
					event = "msg_show",
					kind = "",
					find = "written",
				},
				opts = { skip = true },
			},
		},
		-- add any options here
		views = {
			cmdline_popup = {
				position = {
					row = 5,
					col = "50%",
				},
				size = {
					width = 60,
					height = "auto",
				},
			},
			popupmenu = {
				relative = "editor",
				position = {
					row = 8,
					col = "50%",
				},
				size = {
					width = 60,
					height = 10,
				},
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
				win_options = {
					winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
				},
			},
		},
		lsp = {
			override={
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["cmp.entry.get_documentation"] = false,
			},
			documentation = {
				view = "hover",
				opts = {
					lang = "markdown",
					replace = true,
					render = "plain",
					format = { "{message}" },
					position = { row = 2, col = 2 },
					size = {
						max_width = math.floor(0.8 * vim.api.nvim_win_get_width(0)),
						max_height = 15,
					},
					border = {
						style = "rounded",
					},
					win_options = {
						concealcursor = "n",
						conceallevel = 3,
						winhighlight = {
							Normal = "CmpPmenu",
							FloatBorder = "DiagnosticSignInfo",
						},
					},
				},
			},
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	}
}
