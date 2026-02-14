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
      local servers = { "lua_ls", "pyright", "ts_ls", "rust_analyzer", "clangd", "jdtls" }
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

      vim.lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
        result.diagnostics = vim.tbl_filter(function(diagnostic)
          return not string.find(diagnostic.message, "non%-project file")
        end, result.diagnostics)
        vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
      end

    end
  },

  vim.diagnostic.config({
    float = {
      border = "single",
    },
  })
}
