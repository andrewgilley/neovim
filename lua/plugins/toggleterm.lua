require('toggleterm').setup({
  direction = 'float',
  shell = 'pwsh.exe',
  open_mapping = { [[<C-Space>]] },
  start_in_insert = true,

  float_opts = {
    border = 'curved',
    width = function() return math.floor(vim.o.columns * 0.84) end,
    height = function() return math.floor(vim.o.lines * 0.82) end
  },

  on_close = function()
    local view = vim.fn.winsaveview()
    vim.defer_fn(function()
      vim.fn.winrestview(view)
    end, 1)
  end
})

vim.keymap.set('n', '<leader>to', ':TermNew dir=%:p:h<CR>', { silent = true })

local Terminal = require("toggleterm.terminal").Terminal

local msvc_term = Terminal:new({
    cmd = 'cmd.exe',
    direction = "float",
    on_open = function(term)
      local batch_path = [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat]]

      vim.fn.chansend(term.job_id,
        'cmd.exe /k "' .. batch_path .. '"\r'
      )
  end,
})

vim.keymap.set('n', '<leader>td', function()
    msvc_term:toggle()
end)
