require('octo').setup({
  enable_builtin = true,
})

vim.keymap.set('n', '<leader>oc', ':Octo<CR>', { silent = true })
vim.keymap.set('n', '<leader>nv', ':Octo search is:pr repo:neovim/neovim<CR>', { silent = true })
