vim.lsp.config['twls'] = {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = { 'html', 'css', 'typescriptreact' },
}

vim.lsp.enable('twls')
