local opt=vim.opt

opt.number=true
opt.relativenumber=true

opt.tabstop=4
opt.shiftwidth=4
opt.expandtab=false
opt.autoindent=true

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