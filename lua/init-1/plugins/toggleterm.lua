require('toggleterm').setup({
  direction = 'float',
  shell = 'pwsh.exe',
  open_mapping = { [[<C-/>]], [[<C-t>]], [[<C-Space>]] },
  start_in_insert = true,

  float_opts = {
    border = 'curved',
    width = 98,
    height = 24,
  }
})

vim.keymap.set('n', '<leader>to', ':ToggleTerm<CR>', { silent = true })
