return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-mini/mini.icons" },

  keys = {
    { "<C-o>", function() require("oil").open() end },
    { "q", function() require("oil").close() end },
  },

  config = function()
    require("oil").setup({
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
        -- ["<Backspace>"] = "actions.parent",
        ["j"] = "actions.parent",
        ["q"] = "actions.close",

        ["l"] = {
          function()
            local oil = require("oil")
            local entry = oil.get_cursor_entry()

            if not entry then return end

            if entry.type == "directory" then
              oil.select()
            else
              oil.select({ tab = true, close = true })
            end
          end,
        },

        ["<leader>w"] = {
          callback = function() require("oil").save({ confirm = false })
          end,
        },
      },
    })
  end
}
