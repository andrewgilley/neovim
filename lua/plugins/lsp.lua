return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        keymaps = {
          install_package = "I",
        },
      },
    },
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "rust_analyzer",
        "clangd",
        "zls",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local servers = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "rust_analyzer",
        "clangd",
        "jdtls",
        "zls",
      }

      local capabilities = require('blink.cmp').get_lsp_capabilities()

      for _, server in ipairs(servers) do
        vim.lsp.config[server] = {
          enabled = true,
          capabilities = capabilities,
        }
      end

      vim.lsp.config["lua_ls"] = {
        enabled = true,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
              disable = { "unused-local" },
            },
          },
        },
      }

      vim.lsp.enable(servers)
    end
  },

  vim.diagnostic.config({
    float = {
      border = "single",
      wrap = true,
      max_width = 65,
      max_height = 30,
    },
  }),
}
