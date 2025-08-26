  vim.g.neovide_cursor_animation_length = 0

  vim.g.neovide_scale_factor = 0.8756
  vim.g.neovide_opacity = 1

  vim.keymap.set('n', '<leader>sf', ':echo neovide_scale_factor<CR>', { silent = true })
  vim.keymap.set('n', '<leader>sd', ':lua vim.g.neovide_scale_factor = 0.8756<CR>', { silent = true })

  vim.keymap.set('n', '<leader>of', ':lua vim.g.neovide_opacity = 1<CR>', { silent = true })
  vim.keymap.set('n', '<leader>oh', ':lua vim.g.neovide_opacity = 0.5<CR>', { silent = true })

  vim.keymap.set({ 'n', 'v' }, '<C-=>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.001<CR>', { silent = true })
  vim.keymap.set({ 'n', 'v' }, '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.001<CR>', { silent = true })

  vim.keymap.set({ 'n', 'v' }, '<A-=>', ':lua vim.g.neovide_opacity = vim.g.neovide_opacity + 0.01<CR>', { silent = true })
  vim.keymap.set({ 'n', 'v' }, '<A-->', ':lua vim.g.neovide_opacity = vim.g.neovide_opacity - 0.01<CR>', { silent = true })
