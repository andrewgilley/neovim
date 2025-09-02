vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'html', 'css', 'js', 'jsx', 'ts', 'tsx', 'typescript', 'typescriptreact', 'lua', 'toml' },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'zig', 'c', 'cpp', 'python', 'ps1' },
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
    vim.bo.shiftwidth = 8
  end,
})

vim.api.nvim_create_autocmd({'BufLeave'}, {
  callback = function()
    vim.b.last_cursor = vim.api.nvim_win_get_cursor(0)
    vim.b.last_view = vim.fn.winsaveview()
  end
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
