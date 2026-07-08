vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

 vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },

    { "rebelot/kanagawa.nvim", lazy = true },
    { "0xleodevv/oc-2.nvim", lazy = true },
    { "devbydaniel/houston.nvim", lazy = false },
    { "dracula/vim", lazy = false },
    { "marko-cerovac/material.nvim", lazy = false },
    { "rose-pine/neovim", lazy = false },
    { "haze/sitruuna.vim", lazy = false },

    { "andrewgilley/st.nvim", lazy = false },
    { "andrewgilley/kg.nvim", lazy = false },
    { "andrewgilley/dc.nvim", lazy = false },
    { "andrewgilley/tk.nvim", lazy = false },
    { "andrewgilley/gn.nvim", lazy = false },
    { "andrewgilley/nd.nvim", lazy = false },
  },

  keys = {
    vim.keymap.set('n', '<leader>la', ':Lazy<CR>', { silent = true }),
  },

  checker = {
    enabled = true,
    notify = false,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "netrw",
        "netrwPlugin",
      },
    },
  },
})
