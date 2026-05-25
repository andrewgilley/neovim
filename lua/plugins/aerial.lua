return {
  "stevearc/aerial.nvim",
  lazy = false,

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    keymaps = {
      ["<C-k>"] = false,
    },

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
      if ctx.backend_name ~= "lsp" then
        return true
      end

      if type(item.name) ~= "string" then
        return true
      end

      local max_title_len = 23

      local function truncate_name()
        if vim.fn.strchars(item.name) > max_title_len then
          item.name = vim.fn.strcharpart(item.name, 0, max_title_len - 3) .. "..."
        end
      end

      local cpp_like_filetypes = {
        cpp = true,
        c = true,
        cuda = true,
      }

      if cpp_like_filetypes[vim.bo[bufnr].filetype] then
        if item.kind == "Function"
          or item.kind == "Method"
          or item.kind == "Constructor"
        then
          item.name = item.name:gsub("^.*::", "")
        end

        truncate_name()
        return true
      end

      if vim.bo[bufnr].filetype == "go" then
        local receiver, method = item.name:match("^%((.-)%)%.(.+)$")

        if receiver and method then
          item.name = string.format("(%s) %s", receiver, method)
        end

        truncate_name()
        return true
      end

      if vim.bo[bufnr].filetype ~= "rust" then
        truncate_name()
        return true
      end

      local function compact_impl_name(name)
        return name
      end

      local new_name = compact_impl_name(item.name)
      if new_name then
        item.name = new_name
      end

      truncate_name()
      return true
    end,

    layout = {
      min_width = 30,
      width = 33,
      resize_to_content = true,
      default_direction = "right",

      win_opts = {
        statusline = "[aerial]",
      },
    },

    autojump = true,
    highlight_on_jump = false,
    highlight_on_hover = false,
    post_jump_cmd = "normal! zt10\025$",
  },

  config = function(_, opts)
    require("aerial").setup(opts)

    --vim.api.nvim_create_autocmd("BufReadPost", {
    --  callback = function(args)
    --    if vim.bo[args.buf].buftype ~= "" then
    --      return
    --    end

    --    require("aerial").open({
    --      focus = false,
    --      direction = "right",
    --    })
    --  end,
    --})
  end,

  keys = {
    { "<leader>ae", "<cmd>AerialToggle!<CR>" },
  },
}
