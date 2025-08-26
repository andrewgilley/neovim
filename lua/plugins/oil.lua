require('oil').setup({
  skip_confirm_for_simple_edits = true,
  keymaps = {
    ['-'] = false,

    ['<Backspace>'] = { 'actions.parent', mode = 'n' },

    ['<C-j>'] = { 'actions.parent', mode = 'n' },
    ['<C-l>'] = { 'actions.select', mode = 'n' },

    ['<C-i>'] = { 'k', mode = 'n' },
    ['<C-k>'] = { 'j', mode = 'n' },

    ['q'] = { 'actions.close', mode = 'n' },
  },

  float = {
    padding = 3,
    max_width = 0.8,
    max_height = 0.9,
    border = "rounded",
    win_options = {
      winblend = 0,
    }
  },
})

vim.keymap.set('n', '<leader>ol', ':Oil<CR>', { silent = true })
vim.keymap.set('n', '<C-o>', ':Oil<CR>', { silent = true })
