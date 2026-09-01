local opt = vim.opt
opt.number = false
opt.relativenumber = true
opt.wrap = false
opt.bg = "dark"
opt.scroll = 10
opt.report = 1000
opt.showtabline = 0
opt.statusline = " %{v:lua.statusline_project_path()} %m %= %{v:lua.statusline_search_count()} %l(%L),%c  "
opt.confirm = true
opt.timeout = false
opt.hlsearch = false
opt.termguicolors = true
opt.colorcolumn = ""
opt.signcolumn = 'yes:1'
opt.showcmd = false
opt.ruler = true
opt.rulerformat = '%l(%L),%c'
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
opt.grepprg = "rg --vimgrep --smart-case"
opt.grepformat = "%f:%l:%c:%m"
opt.shortmess:append 'I'
opt.shortmess:remove 'S'
opt.guicursor:append('t:ver25')
opt.fillchars:append({ fold = " " })
opt.formatoptions:remove({ "r", "o" })

_G.statusline_project_path = function()
  local winid = vim.g.statusline_winid or vim.api.nvim_get_current_win()
  local bufnr = vim.api.nvim_win_get_buf(winid)
  local filename = vim.api.nvim_buf_get_name(bufnr)

  if filename == "" then
    return "[No Name]"
  end

  local root = vim.fs.root(bufnr, ".git")

  if not root then
    return vim.fn.fnamemodify(filename, ":~:.")
  end

  local relative = vim.fs.relpath(root, filename)

  if not relative then
    return vim.fn.fnamemodify(filename, ":t")
  end

  return (vim.fs.basename(root) .. "/" .. relative):gsub("\\", "/")
end

_G.statusline_search_count = function()
  if vim.fn.getreg("/") == "" then
    return ""
  end

  local ok, count = pcall(vim.fn.searchcount, {
    recompute = 1,
    maxcount = 9999,
    timeout = 100,
  })

  if not ok or type(count) ~= "table" or not count.total then
    return ""
  end

  local total = count.total or 0

  if total == 0 then
    return ""
  end

  local current = (count.current or 0) > 0 and count.current or "?"

  if (count.incomplete or 0) > 0 then
    total = total .. "+"
  end

  return string.format("[%s/%s]", current, total)
end
