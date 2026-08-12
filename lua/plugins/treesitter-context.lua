return {
  "nvim-treesitter/nvim-treesitter-context",

  event = {
    "BufNewFile",
    "BufReadPost",
  },

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },

  keys = {
    { "<leader>tc", "<cmd>TSContext toggle<CR>", desc = "Toggle Treesitter context" },
  },

  opts = {
    enable = true,
    max_lines = 1,
  },
}
