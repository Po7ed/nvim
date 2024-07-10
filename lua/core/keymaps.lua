vim.g.mapleader=" "

local km=vim.keymap

-- I have ahk :)
-- km.set("i","jk","<Esc>")

-- Split
km.set("n","<leader>sv","<C-w>v",{desc="Split Vertically",silent=true})
km.set("n","<leader>ss","<C-w>s",{desc="Split",silent=true})
km.set("n","<leader>sc","<C-w>c",{desc="Close",silent=true})
km.set("n","<leader>sx","<C-w>x",{desc="Swap",silent=true})

-- km.set("n","<leader>sh","<C-w>h")
-- km.set("n","<leader>sj","<C-w>j")
-- km.set("n","<leader>sk","<C-w>k")
-- km.set("n","<leader>sl","<C-w>l")

-- local opt={noremap=true,silent=true}

-- better up/down
km.set("n","j","v:count==0?'gj':'j'",{desc="Down",expr=true,silent=true})
km.set("n","k","v:count==0?'gk':'k'",{desc="Up",expr=true,silent=true})

-- Move to window using the <ctrl> hjkl keys
km.set("n","<C-h>","<C-w>h",{desc="Go to Left Window",remap=true,silent=true})
km.set("n","<C-j>","<C-w>j",{desc="Go to Lower Window",remap=true,silent=true})
km.set("n","<C-k>","<C-w>k",{desc="Go to Upper Window",remap=true,silent=true})
km.set("n","<C-l>","<C-w>l",{desc="Go to Right Window",remap=true,silent=true})

-- Resize window using <ctrl> arrow keys
km.set("n","<C-Up>","<cmd>resize +2<cr>",{desc="Increase Window Height",silent=true})
km.set("n","<C-Down>","<cmd>resize -2<cr>",{desc="Decrease Window Height",silent=true})
km.set("n","<C-Left>","<cmd>vertical resize -2<cr>",{desc="Decrease Window Width",silent=true})
km.set("n","<C-Right>","<cmd>vertical resize +2<cr>",{desc="Increase Window Width",silent=true})

-- buffers
km.set("n","<S-h>","<cmd>bprevious<cr>",{desc="Prev Buffer",silent=true})
km.set("n","<S-l>","<cmd>bnext<cr>",{desc="Next Buffer",silent=true})
km.set("n","<leader>bd","<cmd>bd<cr>",{desc="Delete Buffer",silent=true})
km.set("n","<leader>bD","<cmd>bd!<cr>",{desc="Delete Buffer!",silent=true})

-- save file
km.set({"i","x","n","s"},"<C-s>","<cmd>w<cr>",{desc="Save File",silent=true})

-- lazy
km.set("n","<leader>l","<cmd>Lazy<cr>",{desc="Lazy",silent=true})

-- new file
km.set("n","<C-n>","<cmd>enew<cr>",{desc="New File",silent=true})

-- quit
km.set("n","<leader>qq","<cmd>qa<cr>",{desc="Quit All",silent=true})
km.set("n","<leader>QQ","<cmd>qa!<cr>",{desc="Quit All!",silent=true})

-- nvim-tree
km.set("n","<leader>eo","<cmd>NvimTreeOpen<cr>",{desc="Open the Tree",silent=true})
km.set("n","<leader>ec","<cmd>NvimTreeClose<cr>",{desc="Close the Tree",silent=true})
km.set("n","<leader>et","<cmd>NvimTreeToggle<cr>",{desc="Toggle the Tree",silent=true})
km.set("n","<leader>ee","<cmd>NvimTreeToggle<cr>",{desc="Toggle the Tree",silent=true})
km.set("n","<leader>ef","<cmd>NvimTreeFocus<cr>",{desc="Tree Focus",silent=true})
km.set("n","<leader>er","<cmd>NvimTreeRefresh<cr>",{desc="Refresh the Tree",silent=true})
km.set("n","<leader>e-","<cmd>NvimTreeCollapse<cr>",{desc="Collapse the Tree",silent=true})
km.set("n","<leader>e,","<cmd>NvimTreeResize -1<cr>",{desc="Resize(-1) the Tree",silent=true})
km.set("n","<leader>e.","<cmd>NvimTreeResize +1<cr>",{desc="Resize(+1) the Tree",silent=true})
km.set("n","<leader>e<","<cmd>NvimTreeResize -5<cr>",{desc="Resize(-5) the Tree",silent=true})
km.set("n","<leader>e>","<cmd>NvimTreeResize +5<cr>",{desc="Resize(+5) the Tree",silent=true})

-- telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

