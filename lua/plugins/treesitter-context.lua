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

  config = function(_, opts)
    local function set_highlights()
      vim.api.nvim_set_hl(0, "TreesitterContext", { link = "CursorLine" })
      vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "CursorLine" })
      vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true })
      vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", {
        link = "TreesitterContextBottom",
      })
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("TreesitterContextHighlights", { clear = true }),
      callback = function()
        vim.schedule(set_highlights)
      end,
    })

    require("treesitter-context").setup(opts)
    vim.schedule(set_highlights)
  end,
}
