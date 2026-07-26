local cmd = vim.cmd
local hl = vim.api.nvim_set_hl

-- cmd("colorscheme default")
-- cmd("colorscheme kanagawa")
cmd("colorscheme houston")
-- cmd("colorscheme oc-2")
-- cmd("colorscheme dracula")
-- cmd("colorscheme rose-pine")
-- cmd("colorscheme material")
-- cmd("colorscheme material-darker")
-- cmd("colorscheme sitruuna")
--
-- cmd("colorscheme st")
-- cmd("colorscheme kg")
-- cmd("colorscheme dc")
-- cmd("colorscheme tk")
-- cmd("colorscheme gn")
-- cmd("colorscheme nd")
-- cmd("colorscheme md")

hl(0, "CursorLineNr", { link = 'LineNr' })

local colorscheme = vim.g.colors_name

if colorscheme == "default" then
  hl(0, "StatusLine", { fg = "#595D63", bg = "#14161B" })
  hl(0, "StatusLineNC", { fg = "#595D63", bg = "#14161B" })

  hl(0, "LineNr", { fg = "#595D63", bg = "NONE" })

  hl(0, "WinSeparator", { fg = "#595D63", bg = 'NONE' })
end

if colorscheme == "onedark" then
  hl(0, "StatusLine", { fg = '#5C6370', bg = '#282C34' })
  hl(0, "StatusLineNC", { fg = '#5C6370', bg = '#282C34' })

  hl(0, "NormalFloat", { fg = "#FFFFFF" })
  hl(0, "FloatBorder", { fg = "#FFFFFF" })

  hl(0, "TelescopeBorder",        { fg = "#FFFFFF" })
  hl(0, "TelescopePromptBorder",  { fg = "#FFFFFF" })
  hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF" })
  hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF" })

  hl(0, "WinSeparator", { fg = '#282C34', bg = 'NONE' })
end

if colorscheme == "oc-2" then
  hl(0, "StatusLine", { fg = '#545454', bg = "NONE" })
  hl(0, "StatusLineNC", { fg = '#545454', bg = "NONE" })

  hl(0, "TelescopeNormal", { fg = "NONE", bg = "#101010" })
  hl(0, "TelescopePromptNormal", { fg = "NONE", bg = "#101010" })
  hl(0, "TelescopeResultsNormal", { fg = "NONE", bg = "#101010" })
  hl(0, "TelescopePreviewNormal", { fg = "NONE", bg = "#101010" })
  hl(0, "TelescopeBorder", { fg = "#FFFFFF", bg = "#101010" })
  hl(0, "TelescopePromptBorder", { fg = "#FFFFFF", bg = "#101010" })
  hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF", bg = "#101010" })
  hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF", bg = "#101010" })
  hl(0, "TelescopeSelection", { bg = "#2A2A2A" })
  hl(0, "TelescopeSelectionCaret", { fg = "#FAB283" })
  hl(0, "TelescopePromptPrefix", { fg = "#FAB283" })
  hl(0, "TelescopePromptCursor", { fg = "#101010", bg = "#FAB283" })

  hl(0, 'BlinkCmpMenu', { bg = "#101010" })
  hl(0, 'BlinkCmpMenuBorder', { fg = "#FFFFFF", bg = "#101010" })
  hl(0, 'BlinkCmpLabelDescription', { bg = "#101010", fg = "NONE" })
  hl(0, 'BlinkCmpKind', { bg = "#101010", fg = "NONE" })

  hl(0, "DiagnosticBorder", { fg = "#FFFFFF", bg = "NONE" })

  hl(0, "ToggleTermNormalFloat", { fg = "#FFFFFF", bg = "#101010" })
  hl(0, "FloatBorder", { fg = "#FFFFFF", bg = "#101010" })

  hl(0, "WinSeparator", { fg = "#545454", bg = 'NONE' })
end

if colorscheme == "houston" then
  hl(0, "StatusLine", { fg = '#545864', bg = '#17191E' })
  hl(0, "StatusLineNC", { fg = '#545864', bg = '#17191E' })

  hl(0, "TelescopeNormal", { bg = "#17191E" })
  hl(0, "TelescopeBorder", { bg = "#17191E" })
  hl(0, "TelescopePromptNormal", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "TelescopePromptTitle", { fg = "#17191E", bg = "#4BF3C8" })
  hl(0, "TelescopePromptCounter", { fg = "#545864", bg = "#17191E" })
  hl(0, "TelescopePromptPrefix", { fg = "#54B9FF", bg = "#17191E" })
  hl(0, "TelescopeResultsTitle", { fg = "#17191E", bg = "#4BF3C8" })
  hl(0, "TelescopeResultsNormal", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "TelescopePreviewNormal", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "TelescopePreviewTitle", { fg = "#17191E", bg = "#4BF3C8" })
  hl(0, "TelescopePromptBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "TelescopeSelectionCaret", { fg = "#54B9FF" })

  hl(0, "OilDir", { fg = "#54B9FF", bold = true })

  hl(0, 'BlinkCmpMenu', { bg = "#17191E" })
  hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#17191E" })
  hl(0, 'BlinkCmpLabelDescription', { bg = "#17191E", fg = "NONE" })
  hl(0, 'BlinkCmpKind', { bg = "#17191E", fg = "NONE" })

  hl(0, "AerialNormal", { bg = "#17191E" })
  hl(0, "AerialWinBg", { bg = "#17191E" })
  hl(0, "AerialLine", { fg = "NONE", bg = "NONE" })

  hl(0, "NoiceCmdline", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NoiceCmdlineIcon", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NoiceCmdlineIconCmdline", { fg = "#FFFFFF", bg = "#17191E" })

  hl(0, "NotifyINFOBody", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyINFOBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyINFOTitle", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyINFOIcon", { fg = "#FFFFFF", bg = "#17191E" })

  hl(0, "NotifyWARNBody", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyWARNBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyWARNTitle", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyWARNIcon", { fg = "#FFFFFF", bg = "#17191E" })

  hl(0, "NotifyERRORBody", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyERRORBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyERRORTitle", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyERRORIcon", { fg = "#FFFFFF", bg = "#17191E" })

  hl(0, "NotifyDEBUGBody", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyDEBUGBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyDEBUGTitle", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyDEBUGIcon", { fg = "#FFFFFF", bg = "#17191E" })

  hl(0, "NotifyTRACEBody", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyTRACEBorder", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyTRACETitle", { fg = "#FFFFFF", bg = "#17191E" })
  hl(0, "NotifyTRACEIcon", { fg = "#FFFFFF", bg = "#17191E" })

  hl(0, "NotifyBackground", { bg = "#17191E" })

  hl(0, "DiagnosticFloatingError", { fg = "#ff6b6b", bg = "#17191E" })

  hl(0, "NormalFloat", { fg = "NONE", bg = "#17191E"})
  hl(0, "FloatBorder", { fg = "NONE", bg = "#17191E"})

  hl(0, "WinSeparator", { fg = '#545864', bg = 'NONE' })
end

if colorscheme == "kanagawa" then
  hl(0, "StatusLine", { fg = "#5D5D78", bg = "NONE" })
  hl(0, "StatusLineNC", { fg = "#5D5D78", bg = "NONE" })

  hl(0, "LineNr", { fg = "#5D5D78", bg = "NONE" })
  hl(0, "SignColumn", { bg = "NONE" })

  hl(0, "DiagnosticSignError", { bg = "NONE", fg = "#FB4934" })
  hl(0, "DiagnosticSignWarn", { bg = "NONE", fg = "#B8BB26" })
  hl(0, "DiagnosticSignHint", { bg = "NONE", fg = "#FFA066" })

  hl(0, 'BlinkCmpMenu', { bg = "#1F1F28" })
  hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#1F1F28" })

  hl(0, 'BlinkCmpLabelDescription', { bg = '#1F1F28', fg = '#5D5D78' })

  hl(0, "NormalFloat", { bg = "#1F1F28"})
  hl(0, "FloatBorder", { fg = "NONE", bg = "#1F1F28"})

  hl(0, "TelescopeNormal", { link = "Normal" })
  -- hl(0, "TelescopeBorder", { fg = "Normal" })
  hl(0, "TelescopeBorder", { fg = "#DCD7BA" })
  -- hl(0, "TelescopeBorder", { fg = "#FFFFFF" })

  hl(0, "WinSeparator", { fg = "#5D5D78", bg = "NONE" })
end

if colorscheme == "dracula" then
  hl(0, "StatusLine", { fg = "#5D5D78", bg = "#282A36" })
  hl(0, "StatusLineNC", { fg = "#5D5D78", bg = "#282A36" })

  hl(0, "TabLine", { fg = "#5D5D78", bg = "#282A36" })
  hl(0, "TabLineSel", { fg = "#FFFFFF", bg = "#282A36" })
  hl(0, "TabLineFill", { fg = "#FFFFFF", bg = "#282A36" })

  hl(0, "LineNr", { fg = "#5D5D78", bg = "NONE" })

  hl(0, "NormalFloat", { fg = "NONE", bg = "#282A36"})
  hl(0, "Pmenu", { fg = "NONE", bg = "#282A36" })

  hl(0, "WinSeparator", { fg = "#5D5D78", bg = "#282A36" })
end

if colorscheme == "nightfox" then
  hl(0, "StatusLine", { fg = "#738091", bg = "#192330" })
  hl(0, "StatusLineNC", { fg = "#738091", bg = "#192330" })

  hl(0, "TelescopeBorder", { fg = "#FFFFFF", bg = "#192330" })

  hl(0, "WinSeparator", { fg = "NONE", bg = "#192330" })
end

if colorscheme == "material" then
  hl(0, "StatusLine", { fg = "#595D63", bg = "#212121" })
  hl(0, "StatusLineNC", { fg = "#595D63", bg = "#212121" })

  hl(0, "LineNr", { fg = "#595D63", bg = "#212121" })

  hl(0, "Comment", { fg = "#FFFFFF", bg = "#212121"})

  hl(0, "TelescopeBorder",        { fg = "#FFFFFF" })
  hl(0, "TelescopePromptBorder",  { fg = "#FFFFFF" })
  hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF" })
  hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF" })

  hl(0, "NormalFloat", { fg = "NONE", bg = "#212121"})
  hl(0, "Pmenu", { fg = "NONE", bg = "#212121" })

  hl(0, "WinSeparator", { fg = "#424242", bg = "NONE" })
end

--if colorscheme == "material" then
--  hl(0, "StatusLine", { fg = "#4C737A", bg = "#25363B" })
--  hl(0, "StatusLineNC", { fg = "#4C737A", bg = "#25363B" })
--
--  hl(0, "LineNr", { fg = "#4C737A", bg = "#25363B" })
--
--  hl(0, 'BlinkCmpMenu', { bg = "#25363B" })
--  hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#25363B" })
--  hl(0, 'BlinkCmpKind', { fg = "NONE", bg = "#25363B" })
--
--  hl(0, "Comment", { fg = "#FFFFFF", bg = "#25363B"})
--
--  hl(0, "NormalFloat", { fg = "#FFFFFF", bg = "#25363B"})
--  hl(0, "Pmenu", { fg = "NONE", bg = "#25363B" })
--
--  hl(0, "TelescopeBorder", { fg = "#FFFFFF", bg = "#25363B" })
--
--  hl(0, "WinSeparator", { fg = "#25363B", bg = "NONE" })
--end

if colorscheme == "rose-pine" then
  hl(0, "StatusLine", { fg = "#6E6A86", bg = "#191724" })
  hl(0, "StatusLineNC", { fg = "#6E6A86", bg = "#191724" })

  hl(0, "NormalFloat", { fg = "NONE", bg = "#191724"})
  hl(0, "Pmenu", { fg = "NONE", bg = "#191724" })

  hl(0, "TelescopeBorder", { fg = "#FFFFFF", bg = "NONE" })

  hl(0, "WinSeparator", { fg = "#6E6A86", bg = "NONE" })
end

if colorscheme == "sitruuna" then
  hl(0, "StatusLine", { fg = "#676A6B", bg = "#181A1B" })
  hl(0, "StatusLineNC", { fg = "#676A6B", bg = "#181A1B" })

  hl(0, "LineNr", { fg = "#676A6B", bg = "#181A1B" })
  hl(0, "SignColumn", { bg = "#181A1B" })

  hl(0, "TelescopeBorder",        { fg = "#FFFFFF" })
  hl(0, "TelescopePromptBorder",  { fg = "#FFFFFF" })
  hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF" })
  hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF" })
end
