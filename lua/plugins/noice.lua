return {
  "folke/noice.nvim",

  dependencies = {
    "MunifTanjim/nui.nvim",

    {
      "rcarriga/nvim-notify",
      config = function()
        require("notify").setup({
          stages = "fade",
          render = "wrapped-compact",
          max_width = function()
            return math.min(60, math.floor(vim.o.columns * 0.4))
          end,
          minimum_width = 20,
          top_down = false,
          timeout = 1800,
          background_colour = "#17191E",
        })
      end,
    },
  },

  opts = {
    cmdline = {
      view = "cmdline",

      format = {
        cmdline = { lang = "" },
        search_down = { lang = "" },
        search_up = { lang = "" },
        filter = { lang = "" },
        lua = { lang = "" },

        input = {
          view = "cmdline",
          icon = "",
          lang = "",
        },
      },
    },

    messages = {
      view = "notify",
      view_error = "notify",
      view_warn = "notify",
      view_search = false,
    },

    notify = {
      enabled = true,
      view = "notify",
    },

    lsp = {
      progress = {
        enabled = false
      },

      hover = {
        enabled = true
      },

      signature = {
        enabled = true
      },
    },

    presets = {
      bottom_search = true,
      command_palette = false,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
  },
}
