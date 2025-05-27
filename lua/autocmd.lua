vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
--    vim.cmd('NvimTreeOpen')
    vim.cmd('wincmd p')
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'html', 'css', 'js', 'jsx', 'tsx', 'typescriptreact', 'lua' },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'zig' },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})
