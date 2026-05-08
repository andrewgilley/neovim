-- vim.cmd("colorscheme material-darker")
-- vim.cmd("colorscheme material-oceanic")
-- vim.cmd("colorscheme gruvbox-material")
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme github_dark_dimmed")
-- vim.cmd("colorscheme heap")
-- vim.cmd("colorscheme heap-dark")
-- vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme deepwater")
-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme everforest")
-- vim.cmd("colorscheme wombat")
-- vim.cmd("colorscheme houston")
-- vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme nord")
-- vim.cmd("colorscheme studio98")
-- vim.cmd("colorscheme PaperColor")
-- vim.cmd("colorscheme torte")
-- vim.cmd("colorscheme desert")
vim.cmd("colorscheme oc-2")

vim.api.nvim_set_hl(0, "CursorLineNr", { link = 'LineNr' })

vim.api.nvim_set_hl(0, "OilDir", { fg = "#A5D6FF" })
vim.api.nvim_set_hl(0, "OilFile", { fg = "#A5D6FF" })

vim.api.nvim_set_hl(0, 'Folded', { fg = 'NONE', bg = 'NONE' })

if vim.g.colors_name == "github_dark" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#636E7B', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#636E7B', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#30363D', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", fg = "#A5D6FF", italic = true })
end

if vim.g.colors_name == "github_dark_dimmed" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#636E7B', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#636E7B', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#22272E', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", fg = "#A5D6FF", italic = true })
end

if vim.g.colors_name == "onedark" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#5C6370', bg = '#282C34' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#5C6370', bg = '#282C34' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#282C34', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
  vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })

  vim.api.nvim_set_hl(0, "TelescopeBorder",        { fg = "#ABB2BF" })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { fg = "#ABB2BF" })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#ABB2BF" })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#ABB2BF" })
end

if vim.g.colors_name == "oc-2" then
  local oc2_bg = "#101010"
  local oc2_normal = vim.api.nvim_get_hl(0, { name = "Normal" })
  local oc2_fg = oc2_normal.fg and string.format("#%06x", oc2_normal.fg) or "NONE"

  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#545454', bg = oc2_bg })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#545454', bg = oc2_bg })

  vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = oc2_fg, bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = oc2_fg, bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { fg = oc2_fg, bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { fg = oc2_fg, bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#FFFFFF", bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#FFFFFF", bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF", bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF", bg = oc2_bg })
  vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#2A2A2A" })
  vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#FAB283" })
  vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#FAB283" })
  vim.api.nvim_set_hl(0, "TelescopePromptCursor", { fg = oc2_bg, bg = "#FAB283" })

  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = oc2_bg })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = "#FFFFFF", bg = oc2_bg })
  vim.api.nvim_set_hl(0, 'BlinkCmpLabelDescription', { bg = oc2_bg, fg = oc2_fg })
  vim.api.nvim_set_hl(0, 'BlinkCmpKind', { bg = oc2_bg, fg = oc2_fg })


  vim.api.nvim_set_hl(0, "DiagnosticBorder", { fg = "#FFFFFF", bg = "NONE" })

  vim.api.nvim_set_hl(0, "NormalFloat", { fg = oc2_fg, bg = oc2_bg })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#FFFFFF", bg = oc2_bg })

  vim.g.terminal_color_3 = oc2_fg
  vim.g.terminal_color_7 = oc2_fg
  vim.g.terminal_color_11 = oc2_fg
  vim.g.terminal_color_15 = oc2_fg

  local function set_toggleterm_float_hl(buf)
    if vim.bo[buf].filetype ~= "toggleterm" then
      return
    end

    local term_id = vim.b[buf].toggle_number
    if not term_id then
      return
    end

    local normal_hl = "ToggleTerm" .. term_id .. "Normal"
    local normal_float_hl = "ToggleTerm" .. term_id .. "NormalFloat"
    local float_border_hl = "ToggleTerm" .. term_id .. "FloatBorder"

    vim.api.nvim_set_hl(0, normal_hl, { fg = oc2_fg, bg = oc2_bg })
    vim.api.nvim_set_hl(0, normal_float_hl, { fg = oc2_fg, bg = oc2_bg })
    vim.api.nvim_set_hl(0, float_border_hl, { fg = "#FFFFFF", bg = oc2_bg })

    local win = vim.fn.bufwinid(buf)

    if win == -1 or vim.fn.win_gettype(win) ~= "popup" then
      return
    end

    local winhl = vim.wo[win].winhighlight
    local normal_map = "Normal:" .. normal_hl

    if not winhl:find(normal_map, 1, true) then
      vim.wo[win].winhighlight = winhl == ""
        and normal_map
        or winhl .. "," .. normal_map
    end
  end

  vim.api.nvim_create_autocmd({ "BufWinEnter", "TermOpen", "WinEnter" }, {
    group = vim.api.nvim_create_augroup("Oc2ToggleTermFloat", { clear = true }),
    callback = function(args)
      local buf = args.buf or vim.api.nvim_get_current_buf()

      vim.schedule(function()
        if vim.api.nvim_buf_is_valid(buf) then
          set_toggleterm_float_hl(buf)
        end
      end)
    end,
  })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = oc2_bg, bg = 'NONE' })

  vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("Oc2TelescopePromptCursor", { clear = true }),
    pattern = "TelescopePrompt",
    callback = function()
      local winhl = vim.wo.winhighlight

      if not winhl:find("Cursor:TelescopePromptCursor", 1, true) then
        vim.wo.winhighlight = winhl == ""
          and "Cursor:TelescopePromptCursor"
          or winhl .. ",Cursor:TelescopePromptCursor"
      end
    end,
  })
end

if vim.g.colors_name == "houston" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#545864', bg = '#17191E' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#545864', bg = '#17191E' })

  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "NONE", bg = "NONE" })

  vim.api.nvim_set_hl(0, "NormalFloat", { fg = "NONE", bg = "NONE"})
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "NONE", bg = "NONE"})

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#17191E', bg = 'NONE' })
end

if vim.g.colors_name == "torte" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#7F7F7F', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#7F7F7F', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'CursorLineSign', { link = 'SignColumn' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#080808', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "DiagnosticBorder", { fg = "#FFFFFF", bg = "NONE" })
end

if vim.g.colors_name == "desert" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#787878', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#787878', bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'CursorLineSign', { link = 'SignColumn' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = 'NONE', bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = "bg", bg = "bg" })
end

if vim.g.colors_name == "heap-dark" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = '#4A4A4A', bg = 'NONE' })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = '#4A4A4A', bg = 'NONE' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = '#09090B', bg = 'NONE' })
end

if vim.g.colors_name == "material" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#515151", bg = "NONE" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#515151", bg = "NONE" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#212121", bg = "NONE" })

  vim.api.nvim_set_hl(0, "NormalFloat", { fg = "NONE", bg = "#212121"})
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#B0BEC5", bg = "NONE"})

  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = "#212121" })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#212121" })
  vim.api.nvim_set_hl(0, 'BlinkCmpLabelDescription', { bg = "#212121", fg = "NONE" })
  vim.api.nvim_set_hl(0, 'BlinkCmpKind', { bg = "#212121", fg = "NONE" })
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

if vim.g.colors_name == "gruvbox" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#75695D", bg = "NONE" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#75695D", bg = "NONE" })

  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE", fg = "#FB4934" })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE", fg = "#B8BB26" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#282828", bg = "NONE" })
end

if vim.g.colors_name == "tokyonight-moon" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#3B4261", bg = "#222436" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#3B4261", bg = "#222436" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#222436", bg = "NONE" })
end

if vim.g.colors_name == "kanagawa" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#5D5D78", bg = "NONE" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#5D5D78", bg = "NONE" })

  vim.api.nvim_set_hl(0, "LineNr", { fg = "#5D5D78", bg = "NONE" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

  vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE", fg = "#FB4934" })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE", fg = "#B8BB26" })
  vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE", fg = "#FFA066" })

  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = "#1F1F28" })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#1F1F28" })

  vim.api.nvim_set_hl(0, 'BlinkCmpLabelDescription', { bg = '#1F1F28', fg = '#5D5D78' })

  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1F1F28"})
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "NONE", bg = "#1F1F28"})

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#1F1F28", bg = "NONE" })

  vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "Normal" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "Normal" })
end

if vim.g.colors_name == "deepwater" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#1C454E", bg = "#062329" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#1C454E", bg = "#062329" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#062329", bg = "NONE" })
end

if vim.g.colors_name == "sitruuna" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#4c5356", bg = "NONE" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#4c5356", bg = "NONE" })

  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#4c5356', bg = '#181A1B' })
  vim.api.nvim_set_hl(0, 'SignColumn', { fg = 'NONE', bg = '#181A1B' })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "NONE", bg = "NONE" })
end

if vim.g.colors_name == "rose-pine" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#696580", bg = "#191724" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#696580", bg = "#191724" })

  vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#E0DEF4", bg = "#191724" })

  vim.api.nvim_set_hl(0, "MsgArea", { fg = "#E0DEF4", bg = "NONE"  })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#191724", bg = "NONE" })

  vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "Normal" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "Normal" })

  vim.api.nvim_set_hl(0, "TelescopePromptNormal", { link = "Normal" })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { link = "Normal" })

  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = "#191724" })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#191724" })
end

--if vim.g.colors_name == "rose-pine" then
--  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#696580", bg = "#232136" })
--  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#696580", bg = "#232136" })
--
--  vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
--  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#696580", bg = "#232136" })
--
--  vim.api.nvim_set_hl(0, "MsgArea", { fg = "#E0DEF4", bg = "NONE"  })
--
--  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#232136", bg = "NONE" })
--
--  vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "Normal" })
--  vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "Normal" })
--
--  vim.api.nvim_set_hl(0, "TelescopePromptNormal", { link = "Normal" })
--  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { link = "Normal" })
--
--  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = "#232136" })
--  vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#232136" })
--end

if vim.g.colors_name == "studio98" then
  vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = "bg", bg = "bg" })
  vim.api.nvim_set_hl(0, 'LineNr', { fg = "NONE", bg = "bg" })
end

if vim.g.colors_name == "PaperColor" then
  vim.o.background = "light"
  vim.api.nvim_set_hl(0, "CursorLineNr", { link = "LineNr" })
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

  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = "#242424" })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = "NONE", bg = "#242424" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#242424", bg = "NONE" })
  vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = "bg", bg = "bg" })
end

if vim.g.colors_name == "nord" then
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#4C566A", bg = "#2E3440" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#4C566A", bg = "#2E3440" })

  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#2E3440", bg = "NONE" })
end
