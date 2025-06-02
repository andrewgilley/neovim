require('nvim-tree').setup({
  view = {
    width = 30,
  },
  filters = {
        dotfiles = true
  }
})

vim.keymap.set('n', '<C-c>', ':NvimTreeToggle<CR>', { silent = true })
