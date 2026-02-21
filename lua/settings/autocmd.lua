vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'html', 'css', 'js', 'json',
    'jsx', 'ts', 'tsx', 'typescript',
    'typescriptreact', 'lua', 'toml',
    'autohotkey'
  },

  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'zig', 'c', 'cpp', 'python', 'java', 'javascript', 'ps1', 'dosbatch' },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go' },
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 8
    vim.bo.softtabstop = 8
    vim.bo.shiftwidth = 8
  end,
})

vim.api.nvim_create_autocmd({'BufEnter'}, {
  callback = function()
    if vim.b.last_cursor then
      vim.api.nvim_win_set_cursor(0, vim.b.last_cursor)
    end

    if vim.b.last_view then
      vim.fn.winrestview(vim.b.last_view)
    end
  end,
})

vim.api.nvim_create_autocmd("BufWinLeave", {
  group = vim.api.nvim_create_augroup("RestoreView", { clear = true }),
  pattern = "*",
  callback = function()
    vim.b.saved_view = vim.fn.winsaveview()
  end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  group = vim.api.nvim_create_augroup("RestoreView", { clear = true }),
  pattern = "*",
  callback = function()
    if vim.b.saved_view then
      vim.fn.winrestview(vim.b.saved_view)
    end
  end,
})

vim.api.nvim_create_autocmd({'TabLeave'}, {
  callback = function()
    vim.b.last_cursor = vim.api.nvim_win_get_cursor(0)
    vim.b.last_view = vim.fn.winsaveview()
  end
})

vim.api.nvim_create_autocmd({'TabEnter'}, {
  callback = function()
    if vim.b.last_cursor then
      vim.api.nvim_win_set_cursor(0, vim.b.last_cursor)
    end
    if vim.b.last_view then
      vim.fn.winrestview(vim.b.last_view)
    end
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  group = vim.api.nvim_create_augroup("ClearSearchOnEnter", { clear = true }),
  callback = function()
    local cmd_type = vim.fn.getcmdtype()
    if cmd_type == "/" or cmd_type == "?" then
      vim.schedule(function()
        vim.opt.cmdheight = 0
        vim.opt.cmdheight = 1
      end)
    end
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  pattern = "/",
  callback = function()
    vim.schedule(function()
      local keys = vim.api.nvim_replace_termcodes("zt15<C-y>", true, false, true)
      vim.api.nvim_feedkeys(keys, "m", false)
    end)
  end,
})

--vim.api.nvim_create_autocmd("VimEnter", {
  --  callback = function()
    --    require("toggleterm").toggle(0)
    --  end,
    --})
