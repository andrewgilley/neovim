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
    local make_entry = require("telescope.make_entry")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_next,
            ["<C-i>"] = actions.move_selection_previous,
            ["<S-i>"] = actions.preview_scrolling_up,
            ["<S-k>"] = actions.preview_scrolling_down,
          },

          n = {
            ['i'] = actions.move_selection_previous,
            ['k'] = actions.move_selection_next,
            ['l'] = actions.select_default,
            ['j'] = actions.close,
            ['<C-c>'] = actions.close,
            ['<C-d>'] = actions.delete_buffer,
          },
        },

        layout_strategy = 'horizontal',
        layout_config = {
          anchor = 'CENTER',
          height = 0.915,
          width = 0.876,
          prompt_position = 'bottom',
          scroll_speed = 1,
        },
      },

      pickers = {
        colorscheme = {
          enable_preview = true
        },

        find_files = {
          find_command = { 'fd', '--type', 'f' },
        },

        buffers = {
          show_all_buffers = true,
          sort_lastused = true,
          entry_maker = function(entry)
            local master_entry = make_entry.gen_from_buffer({})(entry)
            master_entry.display = function(ent)
              return ent.filename or ent.value
            end

            return master_entry
          end,
        },
      },
    })

    vim.keymap.set('n', '<leader>te', function() builtin.builtin({ prompt_title = 'Builtin', previewer = false }) end)
    -- vim.keymap.set('n', '<leader>co', function() builtin.colorscheme({ previewer = true }) end)

    vim.keymap.set('n', '<leader>fd', function() builtin.find_files({
      prompt_title = "Find file",
      initial_mode = 'insert',
      previewer = true,
      preview_title = 'Preview',
      layout_config = { preview_width = 0.48 },
      file_ignore_patterns = { "%.class$" },
    }) end)

    vim.keymap.set('n', '<leader>fc', function() builtin.find_files({
      prompt_title = 'Find config',
      previewer = false,
      cwd = vim.fn.stdpath('config'),
      file_ignore_patterns = { "%.json$" },
    }) end)

    vim.keymap.set('n', '<leader>fu', function() builtin.find_files({ prompt_title = 'Find user', previewer = false, cwd = 'C:/Users/andre' }) end)
    vim.keymap.set('n', '<leader>fh', function() builtin.find_files({ prompt_title = 'Find drive', cwd = 'C:/' }) end)

    vim.keymap.set('n', '<leader>gd', function() builtin.live_grep({ prompt_title = 'Grep directory', preview_title = 'Preview', layout_config = { preview_width = 0.48 } }) end)
    vim.keymap.set('n', '<leader>gc', function() builtin.live_grep({ prompt_title = 'Grep config', cwd = vim.fn.stdpath('config'), layout_config = { preview_width = 0.48 } }) end)
    vim.keymap.set('n', '<leader>gu', function() builtin.live_grep({ prompt_title = 'Grep user', cwd = 'C:/Users/andre', layout_config = { preview_width = 0.48 } }) end)
    vim.keymap.set('n', '<leader>gh', function() builtin.live_grep({ prompt_title = 'Grep drive', cwd = 'C:/', layout_config = { preview_width = 0.48 } }) end)

    vim.keymap.set('n', '<leader>bf', function() builtin.buffers({ preview_title = "Preview", initial_mode = 'insert', previewer = true,
      layout_config = {
        preview_width = 0.48,
      },
    }) end)

    vim.keymap.set('n', '<leader>tr', function()
      require('telescope').extensions.toggleterm_manager.toggleterm_manager({
        initial_mode = 'normal',
        layout_config = {
          preview_width = 0.48,
        },
      })
    end)
  end,
}
