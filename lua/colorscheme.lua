local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local conf = require('telescope.config').values
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

local colorschemes = {
  'onedark',
  'onenord',
  'material-darker',
  'material-palenight',
  'tokyonight',
  'vscode',
}

local M = {}

M.pick_colorscheme = function()

  pickers.new({}, {
    prompt_title = 'Colorscheme',
    finder = finders.new_table({
      results = colorschemes
    }),
    sorter = conf.generic_sorter({}),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        vim.cmd('colorscheme ' .. selection[1])
        print('Colorscheme set to: ' .. selection[1])
      end)
      return true
    end,
  }):find()
end

return M
