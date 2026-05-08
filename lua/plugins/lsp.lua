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
        "clangd",
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
        "ltex_plus"
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
            },
          },
        },
      }

      vim.lsp.config["ltex_plus"] = {
        enabled = true,
        enableCompletion = true,
        filetypes = { "markdown", "tex", "text", "plaintex", "typst" },
        capabilities = capabilities,
      }

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
