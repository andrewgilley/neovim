require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'vim', 'html' },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  }
})
