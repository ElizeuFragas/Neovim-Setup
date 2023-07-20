local opt = vim.opt
local cmd = vim.cmd
local set_option = vim.api.nvim_set_option

opt.number = true
opt.autowrite = true
opt.cursorline = true
opt.autoread = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 3
opt.shiftwidth = 4
opt.encoding = 'utf-8'
opt.title = true
opt.termguicolors = false
opt.clipboard='unnamedplus'
set_option("clipboard","unnamed")
cmd[[set guicursor=]]
