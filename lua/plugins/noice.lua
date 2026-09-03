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
      view_search = "virtualtext",
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
  config = function(_, opts)
    require("noice").setup(opts)
    local VirtualText = require("noice.view.backend.virtualtext")

    VirtualText.show = function(self)
      self:hide()
      self.buf = vim.api.nvim_get_current_buf()
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      line = line - 1

      if self._messages[1] then
        local raw = vim.trim(self._messages[1]:content())
        local counter = raw:match("(%[[^%]]*/[^%]]*%])") or raw:match("(%b[])") or raw
        local tabstop = vim.bo[self.buf].tabstop
        local padding = string.rep(" ", (tabstop and tabstop > 0) and tabstop or 2)

        self.extmark = vim.api.nvim_buf_set_extmark(self.buf, require("noice.config").ns, line, col, {
          virt_text_pos = "eol",
          virt_text = { { padding .. counter, self._opts.hl_group or "DiagnosticVirtualTextInfo" } },
          hl_mode = "combine",
        })
      end
    end
  end,
}
