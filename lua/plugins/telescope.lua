require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<S-k>'] = require('telescope.actions').move_selection_previous,
        ['<S-j>'] = require('telescope.actions').move_selection_next,

        ['<C-j>'] = require('telescope.actions').preview_scrolling_down,
        ['<C-k>'] = require('telescope.actions').preview_scrolling_up,

        ['<S-Down>'] = require('telescope.actions').move_selection_next,
        ['<S-Up>'] = require('telescope.actions').move_selection_previous,

        ['<C-Down>'] = require('telescope.actions').preview_scrolling_down,
        ['<C-Up>'] = require('telescope.actions').preview_scrolling_up,
      },
      n = {
        ['<C-c>'] = require('telescope.actions').close,
      },
    },

    layout_strategy = 'horizontal',

    layout_config = {
      anchor = 'CENTER',
      height = 0.92,
      width = 0.88,
      prompt_position = 'bottom',

      horizontal = {
        preview_width = 0.43,
        results_width = 0.57,
      },

      vertical = {
        preview_height = 0.7,
        results_height = 0.3,
      },
    },
  },

  pickers = {
    colorscheme = {
      enable_preview = true
    },
    find_files = {
      find_command = { 'fd', '--type', 'f', '--hidden', '--exclude', '.*' }
    },
  }
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>te', builtin.builtin)
vim.keymap.set('n', '<leader>co', builtin.colorscheme)
vim.keymap.set('n', '<leader>bf', builtin.buffers)
vim.keymap.set('n', '<leader>fd', builtin.find_files)
vim.keymap.set('n', '<leader>lg', builtin.live_grep)

vim.keymap.set('n', '<leader>fc', function()
  builtin.find_files({ 
    prompt_title = 'Find config',
    cwd = 'C:/Users/andre/AppData/Local/nvim/lua' })
end)

vim.keymap.set('n', '<leader>gc', function()
  builtin.live_grep({ 
    prompt_title = 'Grep config',
    cwd = 'C:/Users/andre/AppData/Local/nvim/lua' })
end)

vim.keymap.set('n', '<leader>fp', function()
  builtin.find_files({
    prompt_title = 'Find plugin',
    cwd = 'C:/Users/andre/AppData/Local/nvim/pack/plugins' })
end)

vim.keymap.set('n', '<leader>gp', function()
  builtin.live_grep({
    prompt_title = 'Grep plugin',
    cwd = 'C:/Users/andre/AppData/Local/nvim/pack/plugins' })
end)

vim.keymap.set('n', '<leader>fs', function()
  builtin.find_files({ 
    prompt_title = 'Find source',
    cwd = 'C:/Users/andre/Desktop/Dev/code' })
end)

vim.keymap.set('n', '<leader>gs', function()
  builtin.live_grep({ 
    prompt_title = 'Grep source',
    cwd = 'C:/Users/andre/Desktop/Dev/code' })
end)

vim.keymap.set('n', '<leader>fh', function()
  builtin.find_files({ 
    prompt_title = 'Find drive',
    cwd = 'C:/' })
end)

vim.keymap.set('n', '<leader>gh', function()
  builtin.live_grep({ 
    prompt_title = 'Grep drive',
    cwd = 'C:/' })
end)
