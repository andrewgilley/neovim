require('toggleterm').setup({
  direction = 'float',
  shell = 'pwsh.exe',
  open_mapping = { [[<C-Space>]] },
  start_in_insert = true,

  float_opts = {
    border = 'curved',
    width = function() return math.floor(vim.o.columns * 0.84) end,
    height = function() return math.floor(vim.o.lines * 0.84) end
  },

  on_close = function()
    local view = vim.fn.winsaveview()
    vim.defer_fn(function()
      vim.fn.winrestview(view)
    end, 1)
  end
})

vim.keymap.set('n', '<leader>to', ':TermNew dir=%:p:h<CR>', { silent = true })
