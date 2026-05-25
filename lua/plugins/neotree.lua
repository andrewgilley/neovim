return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    lazy = false,

    opts = {
      window = {
        position = "right",
        width = 32,

        mappings = {
          ["i"] = "none",
          ["l"] = "open",
          ["j"] = "close_node",
        },
      },

      filesystem = {
        bind_to_cwd = true,

        cwd_target = {
          sidebar = "global",
        },

        follow_current_file = {
          enabled = true,
        },

        filtered_items = {
          visible = false,
          hide_dotfiles = false,
        },
      },
    },
  },

  vim.keymap.set(
    "n",
    "<leader>nt",
    "<cmd>Neotree toggle<cr>",
    { silent = true }
  ),
}
