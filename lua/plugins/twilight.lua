require('twilight').setup({
  dimming = {
    alpha = 0.18,
    color = { 'Normal', '#ffffff' },
    term_bg = '#000000',
    inactive = false,
  },
  context = 1,
  treesitter = true,
  expand = {
    'function',
    'method',
    'table',
    'if_statement',
  },
  exclude = {},
})

vim.keymap.set('n', '<leader>tl', ':Twilight<CR>', { silent = true })
