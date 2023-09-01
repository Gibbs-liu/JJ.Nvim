---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'onedark'}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
vim.wo.number = true
vim.wo.relativenumber=true
vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.cursorline=true
vim.opt.cursorcolumn=true
vim.cmd[[highlight CursorColumn gui=none guibg=grey20]]
vim.cmd[[highlight CursorLine gui=none guibg=grey20]]
vim.shiftwidth = 4
vim.g.ranibow_activate = 1


-- folding related
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable=false
vim.opt.foldlevel=99
-- folding mapping:
-- zc 折叠一个函数等等
-- zo 打开折叠




-- vim.
 return M


