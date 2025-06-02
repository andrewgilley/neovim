if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0

  --vim.g.neovide_scale_factor = 0.82
  vim.g.neovide_scale_factor = 0.90

  --vim.g.neovide_opacity = 1
  --vim.g.neovide_opacity = 0.92
  --vim.g.neovide_opacity = 0.7
  vim.g.neovide_opacity = 0.62

  vim.keymap.set({ 'n', 'v' }, '<C-=>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.01<CR>')
  vim.keymap.set({ 'n', 'v' }, '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.01<CR>')
  vim.keymap.set({ 'n', 'v' }, '<C-0>', ':lua vim.g.neovide_scale_factor = 1<CR>')
end
