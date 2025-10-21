require('oil').setup({
  skip_confirm_for_simple_edits = true,

  keymaps = {
    ['-'] = false,

    ['<Backspace>'] = { 'actions.parent', mode = 'n' },

    ['<C-j>'] = { 'actions.parent', mode = 'n' },
    ['<C-l>'] = { 'actions.select', mode = 'n' },

    ['q'] = { 'actions.close', mode = 'n' },
  },
})

vim.keymap.set('n', '<leader>ol', ':Oil<CR>', { silent = true })
vim.keymap.set('n', '<C-o>', ':Oil<CR>', { silent = true })
