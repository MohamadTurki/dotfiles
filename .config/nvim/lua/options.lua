local opt = vim.opt
local o = vim.o

opt.laststatus = 2
opt.wrap = false
opt.autoread = true
opt.clipboard:append("unnamedplus")

-- use spaces for tabs and whatnot
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

o.termguicolors = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true
