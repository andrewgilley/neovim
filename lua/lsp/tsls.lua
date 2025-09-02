vim.lsp.config['tsls'] = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescriptreact' },
}

vim.lsp.enable('tsls')
