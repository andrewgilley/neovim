vim.lsp.config['luals'] = {
  cmd = { 'luals' },
  filetypes = { 'lua' },
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        checkThirdParty = false,
      },
    },
  },
}

vim.lsp.enable('luals')
