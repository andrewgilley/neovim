return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "akinsho/toggleterm.nvim",
  },

  config = function()
    local actions = require('telescope.actions')
    local action_state = require("telescope.actions.state")
    local builtin = require('telescope.builtin')
    local make_entry = require("telescope.make_entry")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<Tab>"] = actions.move_selection_previous,
            ["<C-d>"] = actions.delete_buffer,

            ["<C-k>"] = actions.move_selection_next,
            ["<C-i>"] = actions.move_selection_previous,
            ["<C-Up>"] = actions.move_selection_next,
            ["<C-Down>"] = actions.move_selection_previous,

            ["<A-i>"] = actions.preview_scrolling_up,
            ["<A-k>"] = actions.preview_scrolling_down,
            ["<A-j>"] = actions.preview_scrolling_left,
            ["<A-l>"] = actions.preview_scrolling_right,
          },

          n = {
            ["<C-c>"] = actions.close,
            ["<C-d>"] = actions.delete_buffer,

            ["i"] = actions.move_selection_previous,
            ["k"] = actions.move_selection_next,
            ["l"] = actions.select_default,
            ["j"] = actions.close,

            ["<A-i>"] = actions.preview_scrolling_up,
            ["<A-k>"] = actions.preview_scrolling_down,
            ["<A-j>"] = actions.preview_scrolling_left,
            ["<A-l>"] = actions.preview_scrolling_right,
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
          sort_lastused = false,
          entry_maker = function(entry)
            local master_entry = make_entry.gen_from_buffer({})(entry)
            master_entry.display = function(ent)
              return ent.filename or ent.value
            end
            return master_entry
          end,
        },
      },

      extensions = {},
    })

    vim.keymap.set("n", "gd", function()
      local params = vim.lsp.util.make_position_params()

      vim.lsp.buf_request(0, "textDocument/definition", params, function(err, result, ctx)
        if err or not result or vim.tbl_isempty(result) then
          return
        end

        local location = result[1] or result

        vim.cmd("tab split")

        local client = vim.lsp.get_client_by_id(ctx.client_id)
        local offset_encoding = client and client.offset_encoding or "utf-16"

        vim.lsp.util.show_document(location, offset_encoding, {
          focus = true,
          reuse_win = true,
        })

        vim.defer_fn(function()
          vim.cmd("normal! zt")
          vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("10<C-y>$", true, false, true),
            "n",
            false
          )
        end, 50)
      end)
    end)

    vim.keymap.set('n', '<leader>te', function() builtin.builtin({
      prompt_title = 'Builtin',
      results_title = false,
      previewer = false,
    }) end)

    vim.keymap.set("n", "<leader>bf", function()
      require("telescope.pickers").new({}, {
        prompt_title = "Tab",
        results_title = false,
        preview_title = "Preview",

        layout_config = { preview_width = 0.48 },

        finder = require("telescope.finders").new_table({
          results = vim.tbl_map(function(i)
            return {
              tabnr = i,
              bufnr = vim.fn.tabpagebuflist(i)[vim.fn.tabpagewinnr(i)],
              display = vim.fn.fnamemodify(
                vim.fn.bufname(
                  vim.fn.tabpagebuflist(i)[vim.fn.tabpagewinnr(i)]
                ),
                ":~:."
              ),
            }
          end, vim.fn.range(1, vim.fn.tabpagenr("$"))),

          entry_maker = function(entry)
            return {
              value = entry,
              display = entry.display,
              ordinal = entry.display,
              bufnr = entry.bufnr,
              path = vim.api.nvim_buf_get_name(entry.bufnr),
            }
          end,
        }),

        sorter = require("telescope.config").values.generic_sorter({}),
        previewer = require("telescope.previewers").vim_buffer_cat.new({}),

        attach_mappings = function(prompt_bufnr)
          require("telescope.actions").select_default:replace(function()
            vim.cmd(
              "tabnext "
              .. require("telescope.actions.state")
              .get_selected_entry().value.tabnr
            )

            require("telescope.actions").close(prompt_bufnr)
          end)

          return true
        end,
      }):find()
    end)

    vim.keymap.set('n', '<leader>fd', function() builtin.find_files({
      initial_mode = 'insert',
      previewer = true,
      preview_title = "Preview",
      results_title = false,
      prompt_title = "File",
      layout_config = { preview_width = 0.48 },
      file_ignore_patterns = {
        "%.class$",
        "%.dll$",
        "%.obj$",
        "%.exe$",
        "%.spv$",
        "%.png$",
        "%.pdb$",
      },

      attach_mappings = function(_, map)
        map("i", "<CR>", actions.select_tab)
        return true
      end,
    })
  end)

  vim.keymap.set('n', '<leader>fc', function() builtin.find_files({
    prompt_title = "Config",
    previewer = true,
    preview_title = 'Preview',
    results_title = false,
    layout_config = { preview_width = 0.48 },
    cwd = vim.fn.stdpath('config'),
    file_ignore_patterns = { "%.json$" },

    attach_mappings = function(_, map)
      map("i", "<CR>", actions.select_tab)
      return true
    end,
  }) end)

  vim.keymap.set('n', '<leader>fu', function() builtin.find_files({
    prompt_title = 'User',
    preview_title = 'Preview',
    previewer = true,
    layout_config = { preview_width = 0.48 },
    cwd = 'C:/Users/andre',

    attach_mappings = function(_, map)
      map("i", "<CR>", actions.select_tab)
      map("n", "<CR>", actions.select_tab)
      return true
    end,
  }) end)

  vim.keymap.set('n', '<leader>fh', function() builtin.find_files({
    prompt_title = 'Drive',
    cwd = 'C:/',

    attach_mappings = function(_, map)
      map("i", "<CR>", actions.select_tab)
      map("n", "<CR>", actions.select_tab)
      return true
    end,

  }) end)

  vim.keymap.set("n", "<leader>gf", function()
    builtin.live_grep({
      grep_open_files = false,
      prompt_title = "Grep file",
      preview_title = "Preview",
      results_title = false,
      search_dirs = { vim.fn.expand("%:p") },
      layout_config = { preview_width = 0.48 },

      attach_mappings = function(prompt_bufnr, map)
        local function open_and_center()
          actions.select_default(prompt_bufnr)

          vim.schedule(function()
            vim.cmd("normal! zt")
            vim.api.nvim_feedkeys(
              vim.api.nvim_replace_termcodes("10<C-y>$", true, false, true),
              "n",
              false
            )
          end)
        end

        map("i", "<CR>", open_and_center)
        map("n", "<CR>", open_and_center)

        return true
      end,
    })
  end)

  vim.keymap.set('n', '<leader>gd', function()
    builtin.live_grep({
      prompt_title = 'Grep directory',
      preview_title = 'Preview',
      results_title = false,
      layout_config = { preview_width = 0.48 },

      attach_mappings = function(prompt_bufnr, map)
        local function open_and_center()
          actions.select_tab(prompt_bufnr)

          vim.schedule(function()
            vim.cmd("normal! zt")
            vim.api.nvim_feedkeys(
              vim.api.nvim_replace_termcodes("10<C-y>$", true, false, true),
              "n",
              false
            )
          end)
        end

        map("i", "<CR>", open_and_center)
        map("n", "<CR>", open_and_center)

        return true
      end,

    }) end)

    vim.keymap.set('n', '<leader>gc', function() builtin.live_grep({
      prompt_title = 'Grep config',
      results_title = false,
      preview_title = "Preview",
      cwd = vim.fn.stdpath('config'),
      layout_config = { preview_width = 0.48 }
    }) end)

    vim.keymap.set('n', '<leader>gu', function() builtin.live_grep({
      prompt_title = 'Grep user',
      cwd = 'C:/Users/andre',
      layout_config = { preview_width = 0.48 }
    }) end)

    vim.keymap.set('n', '<leader>gh', function() builtin.live_grep({
      prompt_title = 'Grep drive',
      cwd = 'C:/',
      layout_config = { preview_width = 0.48 }
    }) end)

    vim.keymap.set('n', '<leader>bu', function() builtin.buffers({
      preview_title = "Preview",
      initial_mode = 'insert',
      previewer = true,
      layout_config = { preview_width = 0.48 },
    }) end)

    vim.keymap.set("n", "<leader>tb", function()
      require("telescope").extensions.toggleterm_manager.toggleterm_manager({
        initial_mode = "insert",
        prompt_title = "Terminal",
        results_title = false,
        layout_config = {
          preview_width = 0.48,
        },
      })
    end)

    vim.keymap.set('n', '<leader>dl', function()
      local diagnostics = vim.diagnostic.get(0)

      if #diagnostics > 0 then
        require('telescope.builtin').diagnostics({
          bufnr = 0,
          line_width = "full",
          prompt_title = "Diagnostics",
          initial_mode = "insert",

          layout_config = {
            preview_width = 0.48,
          },

          attach_mappings = function(prompt_bufnr, map)
            local function jump_and_float()
              local selection = action_state.get_selected_entry()
              if not selection then
                return
              end

              actions.close(prompt_bufnr)

              local lnum = selection.lnum or (selection.value and selection.value.lnum and selection.value.lnum + 1)
              local col = selection.col or (selection.value and selection.value.col and selection.value.col + 1) or 1

              if not lnum then
                return
              end

              local bufnr = selection.bufnr or (selection.value and selection.value.bufnr)
              local filename = selection.filename or selection.path

              if bufnr and vim.api.nvim_buf_is_valid(bufnr) and bufnr ~= vim.api.nvim_get_current_buf() then
                local winid = vim.fn.bufwinid(bufnr)

                if winid ~= -1 then
                  vim.api.nvim_set_current_win(winid)
                else
                  vim.cmd.buffer(bufnr)
                end
              elseif filename and filename ~= vim.api.nvim_buf_get_name(0) then
                vim.cmd.edit(vim.fn.fnameescape(filename))
              end

              vim.api.nvim_win_set_cursor(0, { lnum, math.max(col, 0) })

              vim.schedule(function()
                local view = vim.fn.winsaveview()
                view.topline = math.max(lnum - 10, 1)
                vim.fn.winrestview(view)

                vim.diagnostic.open_float(nil, {
                  border = "rounded",
                  focus = false,
                  scope = "line",
                })
              end)
            end

            actions.select_default:replace(jump_and_float)
            map('i', '<CR>', jump_and_float)
            map('n', '<CR>', jump_and_float)

            return true
          end,
        })
      end
    end)

    vim.keymap.set("n", "<leader>di", function()
      local pickers = require("telescope.pickers")
      local finders = require("telescope.finders")
      local conf = require("telescope.config").values
      local previewers = require("telescope.previewers")
      local entry_display = require("telescope.pickers.entry_display")

      local cwd = vim.uv.cwd()

      local dir_cmd = vim.fn.executable("fd") == 1
      and { "fd", "--type", "d", "--hidden", "--exclude", ".git" }
      or vim.fn.has("win32") == 1
      and { "cmd", "/C", "dir", "/b", "/s", "/ad" }
      or { "find", ".", "-type", "d" }

      local displayer = entry_display.create({
        separator = " ",
        items = {
          { remaining = true },
        },
      })

      local function scandir_lines(dir)
        local lines = {}
        local handle = vim.uv.fs_scandir(dir)

        if handle then
          while true do
            local name, type = vim.uv.fs_scandir_next(handle)
            if not name then break end
            lines[#lines + 1] = (type == "directory") and (name .. "/") or name
          end
        end

        table.sort(lines, function(a, b)
          local a_is_dir = a:sub(-1) == "/"
          local b_is_dir = b:sub(-1) == "/"
          if a_is_dir ~= b_is_dir then
            return a_is_dir
          end
          return a:lower() < b:lower()
        end)

        if #lines == 0 then
          return { "" }
        end

        return lines
      end

      local dir_previewer = previewers.new_buffer_previewer({
        define_preview = function(self, entry)
          local dir = entry.value or entry[1]
          if not dir or dir == "" then return end

          local abs = vim.fn.fnamemodify(dir, ":p")
          local lines = scandir_lines(abs)

          vim.api.nvim_buf_set_lines(self.state.bufnr, 0, -1, false, lines)
          vim.bo[self.state.bufnr].filetype = "text"
        end,
      })

      pickers.new({}, {
        prompt_title = "Find directory",

        finder = finders.new_oneshot_job(dir_cmd, {
          cwd = cwd,
          entry_maker = function(entry)
            local clean = entry:gsub("[/\\]+$", "")

            return {
              value = clean,
              ordinal = clean,
              display = function(e)
                return displayer({ e.value })
              end,
              path = clean,
            }
          end,
        }),

        sorter = conf.generic_sorter({}),
        previewer = dir_previewer,
        attach_mappings = function(prompt_bufnr)
          actions.select_default:replace(function()
            local selection = action_state.get_selected_entry()
            local dir = selection.value or selection[1]
            actions.close(prompt_bufnr)
            vim.cmd.cd(vim.fn.fnamemodify(dir, ":p"))
          end)
          return true
        end,
      }):find()
    end)
  end,
}
