require('oil').setup({
  skip_confirm_for_simple_edits = true,
  keymaps = {
    ['-'] = false,
    ['<C-Backspace>'] = { 'actions.parent', mode = 'n' },
    ['<A-Up>'] = { 'actions.parent', mode = 'n' },
  },
})

vim.keymap.set('n', '<leader>ol', ':Oil<CR>', { silent = true })
