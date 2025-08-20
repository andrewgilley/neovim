require('persisted').setup({
  autostart = false,
  autoload = false,

  save_dir = vim.fn.expand(vim.fn.stdpath('data') .. '/sessions/'),

  telescope = {
    mappings = {
      delete_session = '<C-d>',
      copy_session = '<C-y>',
      quit = '<C-c>',
    },
    icons = {
      selected = ' ',
      dir = '  ',
    },
  },
})

vim.keymap.set('n', '<leader>sa', ':SessionSave<CR>', { silent = true })
