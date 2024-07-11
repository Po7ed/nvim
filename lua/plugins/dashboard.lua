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
                    icon = "  ",
                    desc = "Lazy Profile",
                    action = "Lazy profile",
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
            -- footer = { "🧊 Hope that you enjoy using IceNvim 😀😀😀" },
			fotter={"Enjoy!"}
        },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
