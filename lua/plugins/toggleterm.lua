require('toggleterm').setup({
  direction = 'float',
  shell = 'pwsh.exe',
  open_mapping = { [[<C-/>]], [[<C-t>]] },
  start_in_insert = true,

  float_opts = {
    border = 'curved',
    width = 106,
    height = 26,
  }
})

vim.keymap.set('n', '<leader>tg', ':ToggleTerm<CR>', { silent = true })
