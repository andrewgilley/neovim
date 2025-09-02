require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'vim', 'html', 'c', 'zig' },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  }
})

require('nvim-treesitter.install').compilers = { 'cl' }
