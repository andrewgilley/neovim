return {
  {
    "stevearc/aerial.nvim",
    lazy = false,

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      backends = {
        rust = { "lsp" },
        ["_"] = { "lsp", "markdown", "asciidoc", "man" },
      },

      filter_kind = {
        "Object",
        "Class",
        "Struct",
        "Enum",
        "Interface",
        "Function",
        "Method",
        "Module",
      },

      post_parse_symbol = function(bufnr, item, ctx)
        if vim.bo[bufnr].filetype ~= "rust" then
          return true
        end

        if ctx.backend_name ~= "lsp" then
          return true
        end

        if type(item.name) ~= "string" then
          return true
        end

        local function compact_impl_name(name)
          if not name:match("^impl%s+") then
            return nil
          end

          local rest = name:gsub("^impl%s+", "")

          -- Strip leading generic params:
          -- impl<T> Foo<T> -> Foo<T>
          if rest:sub(1, 1) == "<" then
            local depth = 0

            for i = 1, #rest do
              local ch = rest:sub(i, i)

              if ch == "<" then
                depth = depth + 1
              elseif ch == ">" then
                depth = depth - 1
              elseif depth == 0 and ch:match("%s") then
                rest = rest:sub(i + 1):gsub("^%s+", "")
                break
              end
            end
          end

          local direct_name = rest:match("^([%w_:]+)")

          if direct_name then
            return direct_name
          end

          return nil
        end

        local new_name = compact_impl_name(item.name)
        if new_name then
          item.name = new_name
          return true
        end

        return true
      end,

      layout = {
        min_width = 30,
        default_direction = "right",

        win_opts = {
          statusline = "[aerial]",
        },
      },

      autojump = true,
      highlight_on_hover = true,
      post_jump_cmd = "normal! zt10\025",
    },

    keys = {
      { "<leader>ae", "<cmd>AerialToggle!<CR>" },
    },
  },
}
