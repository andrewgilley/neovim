return {
  {
    "mason-org/mason.nvim",
    opts = {},

  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "rust_analyzer",
        "clangd"
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local servers = { "lua_ls", "pyright", "ts_ls", "rust_analyzer", "clangd" }

      for _, server in ipairs(servers) do
        vim.lsp.config[server] = {
          enabled = true,
        }
      end

      vim.lsp.config["lua_ls"] = {
        enabled = true,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      vim.lsp.config["ts_ls"] = {
        enabled = true,
        cmd = { "typescript-language-server", "--stdio" },
        filetypes = { "typescript", "typescriptreact" },
        root_dir = vim.fs.dirname(vim.fs.find({'tsconfig.json'}, { upward = true })[1]),
        single_file_support = true,
      }
    end
  },
}
