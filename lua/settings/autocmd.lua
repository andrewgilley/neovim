vim.g.first_tab_replaced = false

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'html', 'css', 'js', 'json',
    'jsx', 'ts', 'tsx', 'typescript',
    'typescriptreact', 'lua', 'toml',
    'autohotkey', 'ocaml'
  },

  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'zig', 'c', 'cpp', 'cc', 'hpp',
    'python', 'java', 'javascript', 'ps1',
    'text', 'dosbatch', 'odin', 'glsl', 'go'
  },

  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.cmd("silent keepjumps %!golines --max-len=80")
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
  callback = function(args)
    local bufnr = args.buf
    local name = vim.api.nvim_buf_get_name(bufnr)

    if name == "" then
      return
    end

    local ok, stats = pcall(vim.uv.fs_stat, name)
    if ok and stats and stats.size > 1024 * 1024 then
      return
    end

    pcall(vim.treesitter.start, bufnr)
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.schedule(function()
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(
        "<leader>cl", true, false, true), "m", false)
      end)
    end
  })

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "TabEnter" }, {
  group = vim.api.nvim_create_augroup("RestoreView", { clear = true }),
  callback = function()
    local views = vim.w.saved_views
    if not views then
      return
    end

    local saved = views[tostring(vim.api.nvim_get_current_buf())]
    if not saved then
      return
    end

    if saved.cursor then
      vim.api.nvim_win_set_cursor(0, saved.cursor)
    end
    if saved.view then
      vim.fn.winrestview(saved.view)
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave", "TabLeave" }, {
  group = "RestoreView",
  callback = function()
    local bufnr = tostring(vim.api.nvim_get_current_buf())
    vim.w.saved_views = vim.w.saved_views or {}
    vim.w.saved_views[bufnr] = {
      cursor = vim.api.nvim_win_get_cursor(0),
      view = vim.fn.winsaveview(),
    }
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.CPP",
  callback = function()
    vim.bo.filetype = "cpp"
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  group = vim.api.nvim_create_augroup("ClearSearchOnEnter", { clear = true }),
  callback = function()
    local cmd_type = vim.fn.getcmdtype()
    if cmd_type == "/" or cmd_type == "?" then
      vim.schedule(function()
        vim.opt.cmdheight = 0
        vim.opt.cmdheight = 1
      end)
    end
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  pattern = "/",
  callback = function()
    vim.schedule(function()
      local keys = vim.api.nvim_replace_termcodes(
        "zt10<C-y>",
        true,
        false,
        true
      )
      vim.api.nvim_feedkeys(keys, "m", false)
    end)
  end,
})

vim.api.nvim_create_autocmd("TabNewEntered", {
  callback = function()
    if not vim.g.first_tab_replaced then
      vim.g.first_tab_replaced = true

      if vim.fn.tabpagenr("$") == 2 then
        vim.cmd("tabclose 1")
      end
    end
  end,
})
