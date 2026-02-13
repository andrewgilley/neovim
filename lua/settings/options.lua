vim.g.mapleader = ' '

vim.opt.number = false
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scroll = 10
vim.opt.report = 1000
vim.opt.showtabline = 0
vim.opt.timeout = false
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes:1'
vim.opt.showcmd = false
vim.opt.ruler = true
vim.opt.rulerformat = '%l,%c'
vim.opt.scrolloff = 0
vim.opt.cursorline = true
vim.opt.virtualedit = 'all'
vim.opt.cmdheight = 1
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.foldtext = "getline(v:foldstart)"
vim.opt.shortmess:append 'I'
vim.opt.guicursor:append('t:ver25')
vim.opt.fillchars:append({ fold = " " })
