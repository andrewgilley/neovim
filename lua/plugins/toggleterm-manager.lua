return {
  "ryanmsnyder/toggleterm-manager.nvim",
  dependencies = {
    "akinsho/toggleterm.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local actions = require("toggleterm-manager").actions
    require("toggleterm-manager").setup({
      initial_mode = "normal",

      titles = {
        prompt = "Terminals",
      },

      layout_config = {
        preview_width = 0.18,
      },

      results = {
        fields = {
          "space",
          "term_name",
        },
      },

      mappings = {
        i = {
          ["<CR>"] = { action = actions.toggle_term, exit_on_action = true },
          ["<C-n>"] = { action = actions.create_term, exit_on_action = false },
          ["<C-d>"] = { action = actions.delete_term, exit_on_action = false },
          ["<C-r>"] = { action = actions.rename_term, exit_on_action = false },
        },
        n = {
          ["<CR>"] = { action = actions.toggle_term, exit_on_action = true },
          ["l"] = { action = actions.toggle_term, exit_on_action = true },
          ["<C-n>"] = { action = actions.create_term, exit_on_action = false },
          ["<C-d>"] = { action = actions.delete_term, exit_on_action = false },
          ["<C-r>"] = { action = actions.rename_term, exit_on_action = false },
        },
      },
    })
  end,
}
