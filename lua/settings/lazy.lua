local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("lazy").setup({
  spec = {
    { import = "plugins" },

     "folke/tokyonight.nvim", lazy = true,
     "marko-cerovac/material.nvim", lazy = true,
     "dgrco/deepwater.nvim", lazy = true,
     "neanias/everforest-nvim", lazy = true,
     "cschlueter/vim-wombat", lazy = true,
     "projekt0n/github-nvim-theme", lazy = true,
     "nordtheme/vim", lazy = true,
     "ellisonleao/gruvbox.nvim", lazy = true,
     "f4z3r/gruvbox-material.nvim", lazy = true,
     "rose-pine/neovim", lazy = true,

      vim.keymap.set('n', '<leader>la', ':Lazy<CR>', { silent = true })

  },

  checker = { enabled = true },
})
