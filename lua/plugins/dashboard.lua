return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup{
        theme = "doom",
        config = {
            -- https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=lightvim
            header = {
                " ",
                " ",
                " ",
                "██╗     ██╗ ██████╗ ██╗  ██╗████████╗██╗   ██╗██╗███╗   ███╗",
                "██║     ██║██╔════╝ ██║  ██║╚══██╔══╝██║   ██║██║████╗ ████║",
                "██║     ██║██║  ███╗███████║   ██║   ██║   ██║██║██╔████╔██║",
                "██║     ██║██║   ██║██╔══██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║",
                "███████╗██║╚██████╔╝██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║",
                "╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝",
                " ",
				"                          v 0.0.0                           ",
                -- string.format("                      %s                       ", require("core.utils").version),
                " ",
            },
            center = {
				{
					icon = "  ",
					desc = "New File",
					action = "enew",
					key = "n",
				},
				{
					icon = "󰒲  ",
					desc = "Lazy",
					action = "Lazy",
					key = "l",
				},
                {
                    icon = "  ",
                    desc = "Lazy Profile",
                    action = "Lazy profile",
					key = "p",
                },
				{
					icon = "Ms ",
					desc = "Mason",
					action = "Mason",
					key = "m",
				},
				{
					icon = "  ",
					desc = "Quit",
					action = "qa",
					key = "q",
				},
                -- {
                --     icon = "  ",
                --     desc = "Edit preferences   ",
                --     action = string.format("edit %s/lua/custom/init.lua", config_root),
                -- },
                -- {
                --     icon = "  ",
                --     desc = "Mason",
                --     action = "Mason",
                -- },
                -- {
                --     icon = "  ",
                --     desc = "About IceNvim",
                --     action = "lua require('plugins.utils').about()",
                -- },
            },
			footer = function()
				local sta=require("lazy").stats()
				return
				{
					"Startuptime: " .. sta.startuptime .. " ms",
					"Plugins: " .. sta.loaded .. " loaded / " .. sta.count .. " installed",
					"Enjoy LightVim!",
				}
			end,
        },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
