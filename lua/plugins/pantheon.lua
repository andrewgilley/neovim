return {
  "andrewgilley/pantheon.nvim",

  config = function()
    require("pantheon").setup({
      width = function() return math.floor(vim.o.columns * 0.820) end,
      height = function() return math.floor(vim.o.lines * 0.796) end,
    })

    vim.keymap.set("n", "<leader>pa", "<cmd>PantheonToggle<CR>", {
      desc = "Toggle Pantheon",
      silent = true,
    })
  end,
}
