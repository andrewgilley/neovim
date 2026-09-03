vim.filetype.add({
  pattern = {
    [".*pacman.*%.conf"] = "ini",
    [".*mirrorlist.*"] = "ini",
  },
})

vim.cmd("filetype plugin on")
vim.cmd("packadd! matchit")
