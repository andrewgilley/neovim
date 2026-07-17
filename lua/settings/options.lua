local opt = vim.opt

opt.number = false
opt.relativenumber = true
opt.wrap = false
opt.bg = "dark"
opt.scroll = 10
opt.report = 1000
opt.showtabline = 0
opt.statusline = " %f %m %= %l,%c  "
opt.confirm = true
opt.timeout = false
opt.hlsearch = false
opt.termguicolors = true
opt.colorcolumn = ""
opt.signcolumn = 'yes:1'
opt.showcmd = false
opt.ruler = true
opt.rulerformat = '%l,%c'
opt.scrolloff = 0
opt.sidescroll = 1
opt.cursorline = true
opt.cursorlineopt = "line"
opt.textwidth = 90
opt.virtualedit = "all"
opt.cmdheight = 2
opt.autoindent = true
opt.smartindent = true
opt.hidden = true
opt.scrollbind = false
opt.cursorbind = false
opt.foldtext = "getline(v:foldstart)"
opt.shortmess:append 'I'
opt.guicursor:append('t:ver25')
opt.fillchars:append({ fold = " " })
opt.formatoptions:remove({ "r", "o" })
