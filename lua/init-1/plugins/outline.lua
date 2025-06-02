require('outline').setup({
  outline_window = {
    position = 'right',
    width = 28,
    relative_width = false,
    auto_jump = true,
    focus_on_open = false,
  },
})

vim.keymap.set('n', '<C-o>', ':Outline!<CR>', { silent = true })
