-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local opt = vim.o

-- 设置缩进为 4 个空格
opt.tabstop = 4 -- 一个制表符显示为 4 个空格
opt.shiftwidth = 4 -- 自动缩进时使用 4 个空格
opt.expandtab = true -- 用空格替代 Tab
opt.softtabstop = 4 -- 编辑时按 Tab 键等价于 4 个空格
