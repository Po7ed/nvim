vim.g.loaded_netrw=1
vim.g.loaded_netrwPlugin=1

require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- https://shaobin-jiang.github.io/blog/posts/neovim-startup/
-- https://github.com/Shaobin-Jiang/IceNvim/blob/master/lua/plugins/config.lua
vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        local function _trigger()
            vim.api.nvim_exec_autocmds("User", { pattern = "LightLoad" })
        end

        if vim.bo.filetype == "dashboard" then
            vim.api.nvim_create_autocmd("BufRead", {
                once = true,
                callback = _trigger,
            })
        else
            _trigger()
        end
    end,
})

require("lazy").setup({{import="plugins"}})

-- require("lazy").setup("plugins")
-- vim.cmd("colorscheme tokyonight-day")
-- vim.cmd("colorscheme tokyonight-night")


-- disable reading shada. Read shada while entering command line.
vim.opt.shadafile = "NONE"
vim.api.nvim_create_autocmd("CmdlineEnter", {
    once = true,
    callback = function()
        local shada = vim.fn.stdpath("state") .. "\\shada\\main.shada"
        vim.o.shadafile = shada
        vim.api.nvim_command("rshada! " .. shada)
    end,
})

-- require("lazy").setup({
-- 	{
-- 		"nvim-lualine/lualine.nvim",
-- 		dependencies={'nvim-tree/nvim-web-devicons'},
-- 		config=function()
-- 			require('lualine').setup()
-- 		end,
-- 	}
-- })

vim.cmd("colorscheme tokyonight-day")
vim.cmd("colorscheme tokyonight-day")
