local opt=vim.opt

if vim.g.neovide then
	vim.o.guifont = "Cascadia Code NF:h14"
	-- vim.g.neovide_background_image = "https://cdn.luogu.com.cn/upload/image_hosting/xkx3fvz5.png"
	-- vim.g.neovide_background_image = "/mnt/G/zjd/58186011_p0_.jpg"
	-- vim.g.neovide_background_opacity = 0.8
	-- vim.g.neovide_neovide_opacity = 0.5
	-- vim.g.neovide_opacity = 0.8
	-- vim.g.neovide_normal_opacity = 0.8
end

opt.number=true
opt.relativenumber=true

opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.expandtab=false

opt.splitright=true
opt.splitbelow=true

-- opt.clipboard:append("unnamedplus")

vim.api.nvim_create_autocmd({"TextYankPost"},{
	pattern={"*"},
	callback=function()
		vim.highlight.on_yank({
			timeout=500,
		})
	end,
})

opt.termguicolors=true

opt.scrolloff=5
opt.sidescrolloff=10
opt.cursorline=true
opt.wrap=false

opt.autoindent=true
opt.smartindent=true
opt.cindent=true

opt.list=true
opt.lcs="tab:▏ ,trail:-,lead:."

opt.acd=true
opt.ar=true
