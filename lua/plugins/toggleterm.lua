return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false,

    opts = {
      size = 18,
      shell = "pwsh.exe",
      open_mapping = [[<C-.>]],
      direction = "float",

      float_opts = {
        border = 'curved',
        width = function() return math.floor(vim.o.columns * 0.868) end,
        height = function() return math.floor(vim.o.lines * 0.825) end,
        row = function() return math.floor(vim.o.lines * 0.055498) end,
      },
    },

    keys = {
      { '<leader>to', ':TermNew dir=%:p:h<CR>' },
    },
  },
}
