vim.lsp.config['zls'] = {
  cmd = { 'zls' },
  filetypes = { 'zig' },
  settings = {
    zls = {
      zig_exe_path = 'C:/Users/andre/.zvm/master/zig.exe',
      zig_lib_path = 'C:/Users/andre/.zvm/master/lib/std',
    },
  },
}

vim.lsp.enable('zls')
