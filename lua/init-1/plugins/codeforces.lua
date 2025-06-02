require('codeforces-nvim').setup({
  use_term_toggle = true,
  cf_path = "C:/Users/andre/Desktop/Dev/code/cp/codeforces",
  compiler = {
    cpp = { "cl.exe", "@.cpp", "-o", "@" },
  },
  run = {
    cpp = { "@" },
  },
})
