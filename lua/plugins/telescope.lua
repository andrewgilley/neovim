require('telescope').setup({
  defaults = {
    multi_selection = true,
    mappings = {
      i = {
        ['<C-k>'] = require('telescope.actions').move_selection_next,
        ['<C-i>'] = require('telescope.actions').move_selection_previous,
      },

      n = {
        ['i'] = require('telescope.actions').move_selection_previous,
        ['k'] = require('telescope.actions').move_selection_next,

        ['l'] = require('telescope.actions').select_default,
        ['j'] = require('telescope.actions').close,

        ['<C-c>'] = require('telescope.actions').close,

        ['<C-d>'] = require('telescope.actions').delete_buffer,
        ['dl'] = require('telescope.actions').delete_buffer,
      },
    },

    layout_strategy = 'horizontal',

    layout_config = {
      anchor = 'CENTER',
      height = 0.91,
      width = 0.84,
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
  },

  extensions = {
    persisted = {
      layout_config = {
        width = 0.84,
        height = 0.84
      },
    },
  },

  require('telescope').load_extension('toggleterm'),
  require('telescope').load_extension('persisted')
})

vim.keymap.set('n', '<C-s>', ':Telescope persisted<CR>')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>te', function()
  builtin.builtin({
    prompt_title = 'Builtin',
    previewer = false,
  })
end)

vim.keymap.set('n', '<leader>tb', function()
  require('telescope-toggleterm').open({
    layout_config = {
      width = 0.90,
    },
    initial_mode = 'normal',
    previewer = true,
  })
end)

vim.keymap.set('n', '<leader>co', function()
  builtin.colorscheme({
    previewer = true,
  })
end)

vim.keymap.set('n', '<leader>bf', function()
  builtin.buffers({
    initial_mode = 'insert',
    previewer = false,
  })
end)

vim.keymap.set('n', '<leader>fd', function()
  builtin.find_files({
    initial_mode = 'insert',
    previewer = false,
  })
end)

vim.keymap.set('n', '<leader>gd', function()
  builtin.live_grep({
    prompt_title = 'Grep directory'})
end)

vim.keymap.set('n', '<leader>fc', function()
  builtin.find_files({
    prompt_title = 'Find config',
    previewer = false,
    cwd = 'C:/Users/andre/AppData/Local/nvim/lua'
  })
end)

vim.keymap.set('n', '<leader>gc', function()
  builtin.live_grep({
    prompt_title = 'Grep config',
    cwd = 'C:/Users/andre/AppData/Local/nvim/lua'
  })
end)

vim.keymap.set('n', '<leader>fp', function()
  builtin.find_files({
    prompt_title = 'Find plugin',
    cwd = 'C:/Users/andre/AppData/Local/nvim/pack/plugins'
  })
end)

vim.keymap.set('n', '<leader>gp', function()
  builtin.live_grep({
    prompt_title = 'Grep plugin',
    cwd = 'C:/Users/andre/AppData/Local/nvim/pack/plugins'
  })
end)

vim.keymap.set('n', '<leader>fs', function()
  builtin.find_files({
    prompt_title = 'Find source',
    previewer = false,
    cwd = 'C:/Users/andre/Desktop/Dev/code'
  })
end)

vim.keymap.set('n', '<leader>gs', function()
  builtin.live_grep({
    prompt_title = 'Grep source',
    cwd = 'C:/Users/andre/Desktop/Dev/code'
  })
end)

vim.keymap.set('n', '<leader>fu', function()
  builtin.find_files({
    prompt_title = 'Find user',
    cwd = 'C:/Users/andre'
  })
end)

vim.keymap.set('n', '<leader>gu', function()
  builtin.live_grep({
    prompt_title = 'Grep user',
    cwd = 'C:/Users/andre' })
end)
vim.keymap.set('n', '<leader>fh', function()
  builtin.find_files({
    prompt_title = 'Find drive',
    cwd = 'C:/'
  })
end)

vim.keymap.set('n', '<leader>gh', function()
  builtin.live_grep({
    prompt_title = 'Grep drive',
    cwd = 'C:/' })
end)
