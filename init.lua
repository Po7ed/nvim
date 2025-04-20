-- get OS
if vim.fn.exists('g:os') == 0 then
	local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 or vim.fn.has("win16") == 1
	if is_windows then
		vim.g.os = "Windows"
	elseif vim.fn.has("wsl")==1 then
		vim.g.os="WSL"
	else
		local uname_output = vim.fn.system('uname')
		vim.g.os = string.gsub(uname_output, '\n', '')
	end
end

-- load options and keymaps
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- nvim-tree: disable netrw
vim.g.loaded_netrw=1
vim.g.loaded_netrwPlugin=1

-- auto install lazy
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

-- deleted: User Load for non-dashboard buffers
-- https://shaobin-jiang.github.io/blog/posts/neovim-startup/
-- https://github.com/Shaobin-Jiang/IceNvim/blob/master/lua/plugins/config.lua

-- require("lazy").setup({{import="plugins"}})
require("lazy").setup("plugins")

-- load lsp
require("lsp.lsp")
require("lsp.cmp")

-- disable reading shada. Read shada while entering command line.
vim.opt.shadafile = "NONE"
vim.api.nvim_create_autocmd("CmdlineEnter", {
	once = true,
	callback = function()
		local shada = vim.fn.stdpath("state") .. "/shada/main.shada"
		vim.o.shadafile = shada
		vim.api.nvim_command("rshada! " .. shada)
	end,
})

vim.cmd("colorscheme tokyonight-night")

