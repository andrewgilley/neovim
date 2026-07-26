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
        "gopls",
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
        "gopls",
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

      vim.lsp.config.pyright = {
        capabilities = capabilities,
        before_init = function(_, config)
          local root = config.root_dir

          if not root then
            return
          end

          local python_path = root
          .. "\\.venv\\Scripts\\python.exe"

          if vim.fn.executable(python_path) == 1 then
            config.settings.python.pythonPath = python_path
          end
        end,
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "openFilesOnly",
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
