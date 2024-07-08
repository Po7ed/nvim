vim.g.mapleader=" "

local km=vim.keymap

-- I have ahk
-- km.set("i","zz","<Esc>")
km.set("n","<leader>sv","<C-w>v")
km.set("n","<leader>sc","<C-w>c")
km.set("n","<leader>sx","<C-w>x")

km.set("n","<leader>sh","<C-w>h")
km.set("n","<leader>sj","<C-w>j")
km.set("n","<leader>sk","<C-w>k")
km.set("n","<leader>sl","<C-w>l")

-- local opt={noremap=true,silent=true}

km.set("n","j",[[v:count ? 'j' : 'gj']],{noremap=true,expr=true})
km.set("n","k",[[v:count ? 'k' : 'gk']],{noremap=true,expr=true})