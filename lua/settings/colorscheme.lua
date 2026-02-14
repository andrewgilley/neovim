--vim.cmd("colorscheme material-darker")
--vim.cmd("colorscheme material-oceanic")
--vim.cmd("colorscheme gruvbox-material")
--vim.cmd("colorscheme tokyonight-moon")
--vim.cmd("colorscheme github_dark_dimmed")
--vim.cmd("colorscheme github_dark")
--vim.cmd("colorscheme deepwater")
vim.cmd("colorscheme rose-pine")
--vim.cmd("colorscheme everforest")
--vim.cmd("colorscheme wombat")
--vim.cmd("colorscheme nord")
--vim.cmd("colorscheme gruvbox")

vim.api.nvim_set_hl(0, "CursorLineNr", { link = 'LineNr' })

vim.api.nvim_set_hl(0, "OilDir", { fg = "#A5D6FF" })
vim.api.nvim_set_hl(0, "OilFile", { fg = "#A5D6FF" })

if vim.g.colors_name == "github_dark" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#636E7B', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#636E7B', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#30363D', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", fg = "#A5D6FF", italic = true })
end

if vim.g.colors_name == "github_dark_dimmed" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#636E7B', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#636E7B', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#30363D', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", fg = "#A5D6FF", italic = true })
end

if vim.g.colors_name == "material" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#515151", bg = "NONE" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#515151", bg = "NONE" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#212121", bg = "#212121" })
end

--if vim.g.colors_name == "material" then
--  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#546E7A", bg = "#25363B" })
--  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#546E7A", bg = "#25363B" })
--
--  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#25363B", bg = "NONE" })
--end           

if vim.g.colors_name == "gruvbox-material" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#5A524C", bg = "#282828" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#5A524C", bg = "#282828" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#282828", bg = "NONE" })
end


if vim.g.colors_name == "tokyonight-moon" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#3B4261", bg = "#222436" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#3B4261", bg = "#222436" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#222436", bg = "NONE" })
end

if vim.g.colors_name == "deepwater" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#1C454E", bg = "#062329" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#1C454E", bg = "#062329" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#062329", bg = "NONE" })
end

if vim.g.colors_name == "rose-pine" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#696580", bg = "#191724" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#696580", bg = "#191724" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#191724", bg = "NONE" })

  vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "Normal" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "Normal" })

  vim.api.nvim_set_hl(0, "TelescopePromptNormal", { link = "Normal" })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { link = "Normal" })

  vim.api.nvim_set_hl(0, "DiagnosticBorder", { fg = "#E0DEF4", bg = "NONE" })
end

if vim.g.colors_name == "everforest" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#56635F", bg = "#2D353B" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#56635F", bg = "#2D353B" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#2D353B", bg = "NONE" })
end

if vim.g.colors_name == "wombat" then
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#857B6F", bg = "#242424" })

  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#857B6F", bg = "#242424" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#857B6F", bg = "#242424" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#242424", bg = "NONE" })
  vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = "bg", bg = "bg" })
end

if vim.g.colors_name == "nord" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#4C566A", bg = "#2E3440" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#4C566A", bg = "#2E3440" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#2E3440", bg = "NONE" })
end
