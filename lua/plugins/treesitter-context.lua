return {
  "nvim-treesitter/nvim-treesitter-context",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>tc", "<cmd>TSContext toggle<CR>", desc = "Toggle Treesitter context" },
  },
  opts = {
    enable = true,
    multiwindow = true,
    max_lines = 2,
    trim_scope = "inner",
    mode = "topline",
  },
  config = function(_, opts)
    local function set_highlights()
      vim.api.nvim_set_hl(0, "TreesitterContext", { link = "Normal" })
      vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "LineNr" })
      vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true })

      vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", {
        link = "TreesitterContextBottom",
      })
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("TreesitterContextHighlights", { clear = true }),
      callback = function()
        vim.schedule(set_highlights)
      end,
    })

    -- Make context windows focusable
    local orig_open_win = vim.api.nvim_open_win

    vim.api.nvim_open_win = function(buf, enter, cfg)
      if cfg and cfg.relative == "win" and cfg.row == 0 then
        cfg.focusable = true
      end

      return orig_open_win(buf, enter, cfg)
    end

    local Render = require("treesitter-context.render")
    -- Attach metadata and navigation keymaps when context is rendered
    local orig_open = Render.open

    Render.open = function(winid, ctx_ranges, ctx_lines, force_hl_update)
      orig_open(winid, ctx_ranges, ctx_lines, force_hl_update)

      for _, w in ipairs(vim.api.nvim_list_wins()) do
        local cfg = vim.api.nvim_win_get_config(w)

        if cfg and cfg.win == winid and cfg.relative == "win" and cfg.row == 0 and vim.w[w].treesitter_context then
          local ctx_buf = vim.api.nvim_win_get_buf(w)
          vim.b[ctx_buf].treesitter_context_ranges = ctx_ranges
          vim.b[ctx_buf].treesitter_context_parent_win = winid

          local set_key = function(lhs, fn_action)
            vim.keymap.set("n", lhs, fn_action, { buffer = ctx_buf, silent = true, nowait = true })
          end

          local jump = function()
            local cursor = vim.api.nvim_win_get_cursor(0)
            local row = cursor[1]
            local ranges = vim.b[ctx_buf].treesitter_context_ranges
            local parent_win = vim.b[ctx_buf].treesitter_context_parent_win

            if ranges and ranges[row] and parent_win and vim.api.nvim_win_is_valid(parent_win) then
              local target_line = ranges[row][1] + 1
              local target_col = ranges[row][2] or 0
              vim.api.nvim_set_current_win(parent_win)
              vim.api.nvim_win_set_cursor(parent_win, { target_line, target_col })
            end
          end

          set_key("<CR>", jump)
          set_key("<2-LeftMouse>", jump)

          local return_to_parent = function()
            local parent_win = vim.b[ctx_buf].treesitter_context_parent_win

            if parent_win and vim.api.nvim_win_is_valid(parent_win) then
              vim.api.nvim_set_current_win(parent_win)
            end
          end

          set_key("<Esc>", return_to_parent)
          set_key("q", return_to_parent)
        end
      end
    end

    -- Prevent context window from closing while it is focused
    local orig_close_contexts = Render.close_contexts

    Render.close_contexts = function(exclude_winids)
      local cur_win = vim.api.nvim_get_current_win()

      if vim.w[cur_win].treesitter_context or vim.w[cur_win].treesitter_context_line_number then
        return
      end

      return orig_close_contexts(exclude_winids)
    end

    local orig_close = Render.close

    Render.close = function(winid)
      local cur_win = vim.api.nvim_get_current_win()

      if vim.w[cur_win].treesitter_context or vim.w[cur_win].treesitter_context_line_number then
        local cfg = vim.api.nvim_win_get_config(cur_win)

        if cfg and (cfg.win == winid or cur_win == winid) then
          return
        end
      end

      return orig_close(winid)
    end

    local function focus_context()
      local cur_win = vim.api.nvim_get_current_win()

      for _, w in ipairs(vim.api.nvim_list_wins()) do
        local cfg = vim.api.nvim_win_get_config(w)

        if cfg and cfg.win == cur_win and cfg.relative == "win" and vim.w[w].treesitter_context then
          vim.api.nvim_set_current_win(w)
          return true
        end
      end

      return false
    end

    vim.keymap.set("n", "[c", function()
      if not focus_context() then
        pcall(require("treesitter-context").go_to_context, vim.v.count1)
      end
    end, { desc = "Focus context window or jump to context" })

    vim.keymap.set("n", "<C-w>k", function()
      if not focus_context() then
        vim.cmd("wincmd k")
      end
    end, { desc = "Focus context window or window above" })

    require("treesitter-context").setup(opts)
    vim.schedule(set_highlights)
  end,
}
