require("dwoodwardgb.packer")
require("dwoodwardgb.remap")

vim.opt.exrc = true
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.completeopt= 'menuone,preview'
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.ruler = true
vim.opt.hlsearch = true
vim.opt.linebreak = true
vim.opt.breakat = '^I!@*+;,./?'
vim.opt.mouse = 'a'
vim.opt.laststatus = 2
vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true

vim.opt.syntax = 'on'
vim.g.everforest_background = "hard"
--vim.cmd [[set background=dark]]
vim.cmd [[colorscheme alabaster]]
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.wo.fillchars='eob: '

