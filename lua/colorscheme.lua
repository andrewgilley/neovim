--vim.cmd('colorscheme material-oceanic')
--vim.cmd('colorscheme material-darker')
--vim.cmd('colorscheme material-palenight')

--vim.cmd('colorscheme onedark')

--vim.cmd('colorscheme tokyonight')
--vim.cmd('colorscheme kanagawa')

--vim.cmd('colorscheme naysayer')
--vim.cmd('colorscheme everforest')
vim.cmd('colorscheme sitruuna')

vim.api.nvim_set_hl(0, 'CursorLineNr', { link = 'LineNr' })

if vim.g.colors_name == 'kanagawa' then
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#54546D', bg = '#1F1F28' })

  vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#1F1F28' })
  vim.api.nvim_set_hl(0, 'FoldColumn', { bg = '#1F1F28' })

  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#54546D', bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#54546D', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#1F1F28', bg = 'NONE' })
end

if vim.g.colors_name == 'sitruuna' then
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#5C6366', bg = '#181A1B' })
  vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#181A1B' })

  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#5C6366', bg = '#181A1B' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#5C6366', bg = '#181A1B' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#181A1B', bg = 'NONE' })
end
