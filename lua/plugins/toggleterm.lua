require('toggleterm').setup({
  direction = 'float',
  shell = 'pwsh.exe',
  open_mapping = [[<C-/>]],
  start_in_insert = true,

  float_opts = {
    border = 'curved',
    width = 121,
    height = 32,
  }
})

vim.keymap.set('n', '<leader>tg', ':ToggleTerm<CR>', { silent = true })
