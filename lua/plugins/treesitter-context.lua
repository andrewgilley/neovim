return {
  "nvim-treesitter/nvim-treesitter-context",
  lazy = false,

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },

  keys = {
    { "<leader>tc", "<cmd>TSContext toggle<CR>", desc = "Toggle Treesitter context" },
  },

  opts = {
    enable = true,
    max_lines = 1,
    trim_scope = "inner",
  },
}
