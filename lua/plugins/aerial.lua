return {
  "stevearc/aerial.nvim",
  cmd = {
    "AerialClose",
    "AerialOpen",
    "AerialToggle",
  },

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  keys = {
    { "<leader>ae", "<cmd>AerialToggle!<CR>" },
  },

  opts = {
    disable_max_lines = 0,

    keymaps = {
      ["<C-k>"] = false,
      ["<CR>"] = "actions.jump",
      ["<BS>"] = { callback = function() vim.cmd("normal! k^") end},
    },

    backends = {
      rust = { "lsp" },
      ["_"] = { "lsp", "markdown", "asciidoc", "man" },
    },

    filter_kind = {
      "Object",
      "Class",
      "Struct",
      "Constant",
      "Enum",
      "Interface",
      "Function",
      "Method",
      "Module",
    },

    layout = {
      width = 28,
      min_width = 0,
      max_width = 300,
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

    post_parse_symbol = function(bufnr, item)
      local ft = vim.bo[bufnr].filetype

      if vim.tbl_contains({
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      }, ft) then
      item.name = item.name:gsub("%s+callback%s*%d*$", "")

      item.name = item.name:gsub("^(%s*)(describe)%s*%b()", "%1%2()")
      item.name = item.name:gsub("^(%s*)(it)%s*%b()", "%1%2()")
    elseif ft == "rust" then
      item.name = item.name:gsub("^(impl%s+.-)%s+for%s+.*$", "%1")
      item.name = item.name:gsub("^impl%s+for%s+.*$", "impl")
    end

    local max_len = 23
    local suffix = ".."

    if item.name and vim.fn.strcharlen(item.name) > max_len then
      item.name = vim.fn.strcharpart(
        item.name,
        0,
        max_len - vim.fn.strcharlen(suffix)
      ) .. suffix
    end

    return true
  end,
},

config = function(_, opts)
  vim.opt.splitkeep = "cursor"
  require("aerial").setup(opts)
end,
}
