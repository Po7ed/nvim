local opt=vim.opt

-- if vim.g.neovide then
	vim.o.guifont = "Cascadia Code NF:h16"
-- end

opt.number=true
opt.relativenumber=true

opt.tabstop=4
opt.shiftwidth=4
opt.softtabstop=4
opt.expandtab=false

opt.splitright=true

opt.clipboard:append("unnamedplus")

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
-- opt.nowrap=true
-- opt.wrap=false

opt.autoindent=true
opt.smartindent=true
opt.cindent=true

opt.list=true
opt.lcs="tab:| ,trail:-,lead:."

opt.acd=true
opt.ar=true
