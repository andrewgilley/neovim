return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-mini/mini.icons" },

  config = function()
    require("oil").setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,

      view_options = {
        show_hidden = true,
      },

      columns = {
        "icon",
      },

      keymaps = {
        ["-"] = false,
        ["<CR>"] = false,
        ["<Backspace>"] = "actions.parent",
        ["j"] = "actions.parent",
        ["l"] = "actions.select_tab",
        ["q"] = "actions.close",

        ["<leader>w"] = {
          callback = function() require("oil").save({ confirm = false })
          end,
        },
      },
    })

    vim.keymap.set("n", "<C-o>", ":Oil<CR>", { silent = true })
    vim.keymap.set("n", "q", require("oil").close)
  end
}
