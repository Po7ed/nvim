-- auto change input-method
-- https://github.com/daipeihust/im-select
if vim.g.os=="Windows" or vim.g.os=="WSL" then
	vim.api.nvim_create_autocmd("InsertEnter",
	{
		pattern={"*.md","*.tex","*.txt"},
		command="silent !im-select.exe 2052",
	})
	vim.api.nvim_create_autocmd("InsertLeave",
	{
		pattern={"*.md","*.tex","*.txt"},
		command="silent !im-select.exe 1033",
	})
elseif vim.g.os=="Linux" then
	-- not sure
else
	-- not sure
end
