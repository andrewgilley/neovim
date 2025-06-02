vim.lsp.config['tsserver'] = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescriptreact' },
}

vim.lsp.enable('tsserver')
