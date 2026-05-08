return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },

      opts = {
      layout = {
        min_width = 50,
        default_direction = "right",
      },
    },

    keys = {
      { "<leader>ae", "<cmd>AerialToggle!<CR>", desc = "Aerial Toggle" },
    },
  },
}
