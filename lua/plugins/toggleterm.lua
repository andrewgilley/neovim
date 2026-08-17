local restore_insert_after_term = false

return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false,

    opts = {
      size = 18,
      shell = "pwsh.exe",
      direction = "float",

      start_in_insert = true,
      persist_mode = false,

      on_close = function()
        if restore_insert_after_term then
          restore_insert_after_term = false
          vim.schedule(function()
            vim.cmd("startinsert")
          end)
        end
      end,

      float_opts = {
        border = "curved",
        width = function() return math.floor(vim.o.columns * 0.870) end,
        height = function() return math.floor(vim.o.lines * 0.826) end,
        row = function() return math.floor(vim.o.lines * 0.055498) end,
      },
    },

    keys = {
      { "<leader>to", ":TermNew dir=%:p:h<CR>" },

      {
        "<C-;>",
        function()
          restore_insert_after_term = false
          vim.cmd("ToggleTerm")
        end,
        mode = "n",
      },

      {
        "<C-;>",
        function()
          restore_insert_after_term = true
          vim.cmd("stopinsert")
          vim.cmd("ToggleTerm")
        end,
        mode = "i",
      },

      {
        "<C-;>",
        function()
          vim.cmd("stopinsert")
          vim.cmd("ToggleTerm")
        end,
        mode = "t",
      },
    },
  },
}
