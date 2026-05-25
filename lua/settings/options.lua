vim.g.mapleader = ' '

vim.opt.number = false
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.bg = "dark"
vim.opt.scroll = 10
vim.opt.report = 1000
vim.opt.showtabline = 0
vim.opt.statusline = " %F %= %l,%c  "
vim.opt.timeout = false
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.opt.colorcolumn = ""
vim.opt.signcolumn = 'yes:1'
vim.opt.showcmd = false
vim.opt.ruler = true
vim.opt.rulerformat = '%l,%c'
vim.opt.scrolloff = 0
vim.opt.sidescroll = 1
vim.opt.cursorline = true
vim.opt.cursorlineopt = "line"
vim.opt.textwidth = 90
vim.opt.virtualedit = 'all'
vim.opt.cmdheight = 1
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.foldtext = "getline(v:foldstart)"
vim.opt.formatoptions:remove({ "r", "o" })
vim.opt.shortmess:append 'I'
vim.opt.guicursor:append('t:ver25')
vim.opt.fillchars:append({ fold = " " })

vim.opt.hidden = true
vim.opt.scrollbind = false
vim.opt.cursorbind = false
