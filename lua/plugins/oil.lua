return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-mini/mini.icons" },

  keys = {
    { "<C-o>", function() require("oil").open() end },
    { "q", function() require("oil").close() end },
  },

  config = function()
    local oil = require("oil")

    local function normalize_path(path)
      path = vim.fn.fnamemodify(path, ":p")
      return vim.uv.fs_realpath(path) or vim.fs.normalize(path)
    end

    local function find_existing_file(path)
      local target_path = normalize_path(path)

      for _, buffer in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_valid(buffer)
          and vim.api.nvim_buf_is_loaded(buffer)
          then
            local buffer_path = vim.api.nvim_buf_get_name(buffer)

            if buffer_path ~= ""
              and normalize_path(buffer_path) == target_path
              then
                return buffer
              end
            end
          end
        end

        oil.setup({
          default_file_explorer = true,
          skip_confirm_for_simple_edits = true,

          view_options = {
            show_hidden = true,

            is_always_hidden = function(name, _)
              return name == ".."
            end,
          },

          columns = {
            "icon",
          },

          keymaps = {
            ["-"] = false,
            ["<CR>"] = false,
            ["j"] = "actions.parent",
            ["q"] = "actions.close",

            ["l"] = {
              callback = function()
                local entry = oil.get_cursor_entry()

                if not entry then
                  return
                end

                if entry.type == "directory" then
                  oil.select()
                  return
                end

                local directory = oil.get_current_dir()

                if not directory then
                  return
                end

                local file_path = vim.fs.joinpath(directory, entry.name)
                local existing_buffer = find_existing_file(file_path)

                if existing_buffer then
                  local oil_buffer = vim.api.nvim_get_current_buf()
                  local current_window = vim.api.nvim_get_current_win()

                  vim.api.nvim_win_set_buf(current_window, existing_buffer)

                  if vim.api.nvim_buf_is_valid(oil_buffer) then
                    pcall(vim.api.nvim_buf_delete, oil_buffer, {
                      force = false,
                    })
                  end

                  return
                end

                oil.select({
                  tab = true,
                  close = true,
                })
              end,

              desc = "Open file or reuse existing buffer",
            },

            ["<leader>w"] = {
              callback = function()
                oil.save({ confirm = false })
              end,
            },
          },
        })
      end,
    }
