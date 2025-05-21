vim.lsp.config['zls'] = {
  cmd = { 'zls' },
  filetypes = { 'zig' },
}

vim.lsp.enable('zls')
