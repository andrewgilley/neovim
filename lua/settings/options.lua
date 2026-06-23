local opt = vim.opt

opt.number = false
opt.relativenumber = true
opt.wrap = false
opt.bg = "dark"
opt.scroll = 10
opt.report = 1000
opt.showtabline = 0
opt.tabline = "%!v:lua.Tabline()"
opt.statusline = " %f %m %= (%p%%) %l,%c  "
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

function _G.Tabline()
  local s = ""

  for i = 1, vim.fn.tabpagenr("$") do
    local winnr = vim.fn.tabpagewinnr(i)
    local buflist = vim.fn.tabpagebuflist(i)
    local bufnr = buflist[winnr]
    local name = vim.fn.bufname(bufnr)

    name = name ~= "" and vim.fn.fnamemodify(name, ":t") or ""

    s = s .. "%" .. i .. "T"
    s = s .. (i == vim.fn.tabpagenr() and "%#TabLineSel#" or "%#TabLine#")
    s = s .. " " .. name .. " "
  end

  s = s .. "%#TabLineFill#%T"
  return s
end
