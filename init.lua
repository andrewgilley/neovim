require('options')
require('keymaps')
require('colorscheme')
require('neovide')
require('autocmd')
require('plugins')
require('lsp')

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "rounded", -- Set rounded border
    focusable = false, -- Prevent focusing the window
  }
)

vim.cmd([[highlight clear TODO]])
