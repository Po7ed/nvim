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
				"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
				"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
				"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
				"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
				"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
				"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
                                                  
                -- "██╗     ██╗ ██████╗ ██╗  ██╗████████╗██╗   ██╗██╗███╗   ███╗",
                -- "██║     ██║██╔════╝ ██║  ██║╚══██╔══╝██║   ██║██║████╗ ████║",
                -- "██║     ██║██║  ███╗███████║   ██║   ██║   ██║██║██╔████╔██║",
                -- "██║     ██║██║   ██║██╔══██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║",
                -- "███████╗██║╚██████╔╝██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║",
                -- "╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝",
				-- "██╗   ██╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗",
				-- "██║   ██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝",
				-- "██║   ██║███████╗██║     ██║   ██║██║  ██║█████╗  ",
				-- "╚██╗ ██╔╝╚════██║██║     ██║   ██║██║  ██║██╔══╝  ",
				-- " ╚████╔╝ ███████║╚██████╗╚██████╔╝██████╔╝███████╗",
				-- "  ╚═══╝  ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝",
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
					icon = "  ",
					desc = "Nvim Tree",
					action = "NvimTreeOpen",
					key = "e",
				},
				{
					icon="  ",
					desc="Find File",
					action="Telescope fd",
					key="f",
				},
				{
					icon="  ",
					desc="Recent Files",
					action="Telescope oldfiles",
					key="r",
				},
				{
					icon="󰦨  ",
					desc="Find Texts",
					action="Telescope live_grep",
					key="t",
				},
				{
					icon = "  ",
					desc = "Mason",
					action = "Mason",
					key = "m",
				},
                -- {
                --     icon = "  ",
                --     desc = "Edit preferences   ",
                --     action = "e $LOCALAPPDATA/nvim/init.lua",
                -- },
				{
					icon = "  ",
					desc = "Quit",
					action = "qa",
					key = "q",
				}
            },
			footer = function()
				local sta=require("lazy").stats()
				return
				{
					"Startuptime: " .. sta.startuptime .. " ms",
					"Plugins: " .. sta.loaded .. " loaded / " .. sta.count .. " installed",
					"Configured by Po7ed",
				}
			end,
        },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
