return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "akinsho/toggleterm.nvim",
  },

  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_next,
            ['<C-i>'] = actions.move_selection_previous,
          },

          n = {
            ['i'] = actions.move_selection_previous,
            ['k'] = actions.move_selection_next,
            ['l'] = actions.select_default,
            ['j'] = actions.close,
            ['<C-c>'] = actions.close,
            ['dl'] = actions.delete_buffer,
          },
        },

        layout_strategy = 'horizontal',
        layout_config = {
          anchor = 'CENTER',
          height = 0.915,
          width = 0.876,
          prompt_position = 'bottom',
        },
      },
      pickers = {
        colorscheme = {
          enable_preview = true
        },
        find_files = {
          find_command = { 'fd', '--type', 'f', '--hidden' }
        },
      },
    })

    vim.keymap.set('n', '<leader>tb', ':Telescope toggleterm_manager<CR>')

    vim.keymap.set('n', '<leader>te', function() builtin.builtin({ prompt_title = 'Builtin', previewer = false }) end)
    vim.keymap.set('n', '<leader>co', function() builtin.colorscheme({ previewer = true }) end)
    vim.keymap.set('n', '<leader>bf', function() builtin.buffers({ initial_mode = 'insert', previewer = false }) end)

    vim.keymap.set('n', '<leader>fd', function() builtin.find_files({ prompt_title = "Find file", initial_mode = 'insert', previewer = false }) end)
    vim.keymap.set('n', '<leader>fc', function() builtin.find_files({ prompt_title = 'Find config', previewer = false, cwd = vim.fn.stdpath('config') }) end)
    vim.keymap.set('n', '<leader>fu', function() builtin.find_files({ prompt_title = 'Find user', previewer = false, cwd = 'C:/Users/andre' }) end)
    vim.keymap.set('n', '<leader>fh', function() builtin.find_files({ prompt_title = 'Find drive', cwd = 'C:/' }) end)

    vim.keymap.set('n', '<leader>gd', function() builtin.live_grep({ prompt_title = 'Grep directory' }) end)
    vim.keymap.set('n', '<leader>gc', function() builtin.live_grep({ prompt_title = 'Grep config', cwd = vim.fn.stdpath('config') }) end)
    vim.keymap.set('n', '<leader>gu', function() builtin.live_grep({ prompt_title = 'Grep user', cwd = 'C:/Users/andre' }) end)
    vim.keymap.set('n', '<leader>gh', function() builtin.live_grep({ prompt_title = 'Grep drive', cwd = 'C:/' }) end)
  end,
}
