return {
  'nvim-treesitter/nvim-treesitter',
  branch = "master",
  lazy = false,
  main = "nvim-treesitter.configs",
  cmd = {
    "TSUpdate",
  },
  build = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  opts = {
    highlight = {
      enable = true,
    },
    matchup = {
      enable = true,
    },
    auto_install = true,
    ensure_installed = {
      "tsx",
      "html",
      "css",
      "toml",
      "go",
      "rust",
      "typescript",
      "javascript",
      "java",
      "c",
      "cpp",
      "prisma",
      "odin",
      "zig",
    },
    textobjects = {
      move = {
        enable = true,
        set_jumps = true,
      },
    },
  },
}
