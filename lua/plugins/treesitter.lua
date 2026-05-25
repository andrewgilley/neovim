return {
  'nvim-treesitter/nvim-treesitter',
  branch = "main",
  lazy = false,
  build = ':TSUpdate',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },

  opts = {
    highlight = {
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
    },

    textobjects = {
      move = {
        enable = true,
        set_jumps = true,

        goto_next_start = {
          ["<S-]>"] = "@function.inner",
        },

        goto_previous_start = {
          ["<S-[>"] = "@function.inner",
        },
      },
    },
  },
}
