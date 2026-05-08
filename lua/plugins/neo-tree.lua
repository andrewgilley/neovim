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
        width = 27,

        mappings = {
          ["i"] = "none",
          ["l"] = "open",
          ["j"] = "close_node",
        },
      },

      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
        },
      },
    },
  },

  {
    vim.keymap.set('n', '<leader>nt', ':Neotree<CR>', { noremap = true, silent = true })
  }
}
