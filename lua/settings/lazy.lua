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

    "folke/tokyonight.nvim",
    "marko-cerovac/material.nvim",
    "dgrco/deepwater.nvim",
    "neanias/everforest-nvim",
    "cschlueter/vim-wombat",
    "projekt0n/github-nvim-theme",
    "nordtheme/vim",
    "ellisonleao/gruvbox.nvim",
    "f4z3r/gruvbox-material.nvim",
    "rose-pine/neovim",
    "jnz/studio98",
    "navarasu/onedark.nvim",
    "NLKNguyen/papercolor-theme",
    "rebelot/kanagawa.nvim",
    "valonmulolli/heap.nvim",
    "0xleodevv/oc-2.nvim",
    "devbydaniel/houston.nvim",
    "EdenEast/nightfox.nvim",
  },

  checker = {
    enabled = true,
    notify = false,
  },

  vim.keymap.set('n', '<leader>la', ':Lazy<CR>', { silent = true })
})
