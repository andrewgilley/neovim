require('aerial').setup({
  vim.keymap.set('n', '<C-a>', '<cmd>AerialToggle!<CR>'),

  highlight_on_jump = false,
  highlight_mode = 'last',
  highlight_closest = true,

  on_attach = function(bufnr)
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
  end,

  layout = {
    default_direction = 'prefer_right',
    width = 30,
  },
})
