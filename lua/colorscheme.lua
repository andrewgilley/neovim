vim.cmd('colorscheme sitruuna')
--vim.cmd('colorscheme tairiki')

--vim.cmd('colorscheme tomorrow-night')
--vim.cmd('colorscheme moonwalk')

--vim.cmd('colorscheme naysayer')
--vim.cmd('colorscheme everforest')

--vim.cmd('colorscheme github_dark_dimmed')

--vim.cmd('colorscheme material-oceanic')
--vim.cmd('colorscheme material-darker')
--vim.cmd('colorscheme material-palenight')

--vim.cmd('colorscheme onedark')
--vim.cmd('colorscheme sonokai')

--vim.cmd('colorscheme nord')

--vim.cmd('colorscheme tokyonight')
--vim.cmd('colorscheme kanagawa')

vim.api.nvim_set_hl(0, 'CursorLineNr', { link = 'LineNr' })

if vim.g.colors_name == 'sitruuna' then
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#5C6366', bg = '#181A1B' })
  vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#181A1B' })

  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#5C6366', bg = '#181A1B' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#5C6366', bg = '#181A1B' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#181A1B', bg = 'NONE' })
end

if vim.g.colors_name == 'tairiki-dark' then
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8B8E8B', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#5F6670', bg = '#151515' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#5F6670', bg = '#151515' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#151515', bg = 'NONE' })
end

if vim.g.colors_name == 'tomorrow-night' then
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#616161', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#969896', bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#969896', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#1D1F21', bg = 'NONE' })
end

if vim.g.colors_name == 'kanagawa' then
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#54546D', bg = '#1F1F28' })

  vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#1F1F28' })
  vim.api.nvim_set_hl(0, 'FoldColumn', { bg = '#1F1F28' })

  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#54546D', bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#54546D', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#1F1F28', bg = 'NONE' })
end

if vim.g.colors_name == 'material' then
  vim.api.nvim_set_hl(0, 'StatusLine', { fg = 'NONE', bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = 'NONE', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#212121', bg = 'NONE' })
end

if vim.g.colors_name == 'github_dark_dimmed' then
  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#636E7B', bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#636E7B', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#22272E', bg = 'NONE' })
end
