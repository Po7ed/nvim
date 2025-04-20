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
					"   ██▓     ▒█████    ██████  ▐██▌",
					"  ▓██▒    ▒██▒  ██▒▒██    ▒  ▐██▌",
					"  ▒██░    ▒██░  ██▒░ ▓██▄    ▐██▌",
					"  ▒██░    ▒██   ██░  ▒   ██▒ ▓██▒",
					"  ░██████▒░ ████▓▒░▒██████▒▒ ▒▄▄ ",
					"  ░ ▒░▓  ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░ ░▀▀▒",
					"  ░ ░ ▒  ░  ░ ▒ ▒░ ░ ░▒  ░ ░ ░  ░",
					"    ░ ░   ░ ░ ░ ▒  ░  ░  ░      ░",
					"      ░  ░    ░ ░        ░   ░   ",
					" ",
				},
				center=
				{
					{
						icon = "  ",
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
					-- {
					-- 	icon = "  ",
					-- 	desc = "Lazy Profile",
					-- 	action = "Lazy profile",
					-- 	key = "p",
					-- },
					{
						icon = "  ",
						desc = "Nvim Tree",
						action = "NvimTreeOpen",
						key = "e",
					},
					{
						icon="  ",
						desc="Telescope",
						action="Telescope",
						key="t",
					},
					-- {
					-- 	icon="󰮗  ",
					-- 	desc="Find File",
					-- 	action="Telescope fd",
					-- 	key="f",
					-- },
					-- {
					-- 	icon="󱋢  ",
					-- 	desc="Recent Files",
					-- 	action="Telescope oldfiles",
					-- 	key="r",
					-- },
					-- {
					-- 	icon="󱎸  ",
					-- 	desc="Find Text",
					-- 	action="Telescope live_grep",
					-- 	key="t",
					-- },
					-- {
					-- 	icon = "  ",
					-- 	desc = "Mason",
					-- 	action = "Mason",
					-- 	key = "m",
					-- },
					{
						icon = "  ",
						desc = "Edit Configuration",
						action = "e ~/.config/nvim/init.lua",
						key = "c",
					},
					{
						icon = "  ",
						desc = "Quit",
						action = "qa!",
						key = "q",
					}
				},
					footer = function()
						local sta=require("lazy").stats()
						return
						{
							" " .. sta.startuptime .. " ms",
							"󰩦 " .. sta.loaded .. " / " .. sta.count,
							-- " Los! Los! Los!",
						}
					end,
				},
				hide={tabline=false},
			}
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	}
