local set = vim.keymap.set

set('n', 'n', 'i', { nowait = true })
set('n', 'L', '}k$', { silent = true })
set('n', 'u', ':<C-u>silent undo<CR>', { silent = true })
set('n', '<', '<<', { silent = true })
set('n', 'cw', 'ciw', { silent = true })
set('n', 'cp', 'cib', { silent = true })
set('n', 'cb', 'ci{', { silent = true })
set('n', 'cs', 'ci\'', { silent = true })
set('n', 'cd', 'ci"', { silent = true })
set('n', 'ca', 'ci<', { silent = true })
set('n', 'cr', 'ci[', { silent = true })
set('n', 'dw', 'daw', { silent = true })
set('n', 'dp', 'dap', { silent = true })
set('n', 'yy', '<Nop>', { silent = true })
set('n', 'dd', '<Nop>', { silent = true })
set('n', 'cl', 'yy', { silent = true })
set('n', 'dl', 'dd', { silent = true })
set('n', 'zO', 'zR', { silent = true })
set('n', 'zC', 'zM', { silent = true })
set("n", "<C-]>", "n zt10<C-y>$", { silent = true })
set("n", "<C-[>", "N", { silent = true })
set("n", "<S-o>", "o<Esc>o")
set("n", "<A-o>", "<S-o><Esc><S-o>")
set('n', '<S-i>', '<C-y>', { silent = true })
set('n', '<S-k>', '<C-e>', { silent = true })
set('n', '<C-z>', 'zh')
set('n', '<C-x>', 'zl')
set('n', '<C-s>', '<C-w>r')
set('n', '<C-c>', '<Esc>', { silent = true })
set('n', '<C-p>', '"+p')
set("n", "<S-p>", "o<Esc>p")
set('n', '<C-a>', '<C-w>w', { silent = true })
set("n", "<CR>", "j$", { noremap = true, silent = true })
set("n", "<BS>", "k$", { noremap = true, silent = true })
set('n', '<S-C-i>', '10<C-y>', { silent = true })
set('n', '<S-C-k>', '10<C-e>', { silent = true })
set('n', '<leader>w', ':silent w<CR>', { silent = true })
set('n', '<leader>q', ':silent q<CR>', { silent = true })
set('n', '<leader>aw', ':silent w!<CR>:<CR>', { silent = true })
set('n', '<leader>aq', ':q!<CR>')
set('n', '<leader>as', 'A;<Esc>', { silent = true })
set('n', '<leader>sc', 'zt10<C-y>$')
set('n', '<leader>sr', ':silent source .session.vim<CR>', { silent = true })
set('n', '<leader>so', ':silent w<CR>:so<CR>', { silent = true })
set('n', '<leader>co', 'gcc', { silent = true, remap = true })
set('n', '<leader>vs', ':vs<CR>', { silent = true })
set('n', '<leader>hs', ':split<CR>', { silent = true })
set('n', '<leader>ma', ':Mason<CR>' , { silent = true })
set('n', '<leader>bc', ':bd<CR>', { silent = true })
set('n', '<leader>in', 'mzgg=G`z', { silent = true })
set('n', '<leader>en', ':tabnew<CR>', { silent = true })
set('n', '<leader>ew', ':echo winwidth(0)<CR>', { silent = true })
set('n', '<leader>eh', ':lua vim.diagnostic.enable(false, { bufnr = 0 })<CR>', { silent = true })
set('n', '<leader>ls', ':checkhealth vim.lsp<CR>', { silent = true })
set('n', '<leader>cpd', ':cd ..<CR>:pwd<CR>', { silent = true })
set('n', '<leader>pwd', '<cmd>pwd<CR>', { silent = true })
set('i', '<C-c>', '<Esc>', { silent = true })
set('i', '<C-p>', '<C-r><C-p>+')
set('v', '<C-c>', '"+y', { silent = true })
set('v', '<C-p>', '"+p', {  })
set('v', '<C-y>', '"+y', { silent = true })
set('x', 'y', 'myy`y', {  })
set('t', '<C-d>', [[<C-\><C-n>]])
set('c', '<C-p>', '<C-r>+')

set({ 'n', 'i' }, '<C-Left>', '10h', { silent = true })
set({ 'n', 'i' }, '<C-Right>', '10l', { silent = true })
set({ 'n', 'v' }, '-', '$', { silent = false })
set({ 'n', 'v' }, 'gt', 'gg0', { silent = true })
set({ 'n', 'v' }, 'gb', 'G', { silent = true })
set({ 'n', 'v' }, 'gs', '^', { silent = true })
set({ 'n', 'v' }, 'gl', '$', { silent = true })
set({ 'n', 'v' }, '<C-l>', '10l', { silent = true })
set({ 'n', 'v' }, '<C-j>', '10h', { silent = true })
set({ 'n', 'v' }, '<leader>br', '%')
set({ 'n', 'x' }, '<C-i>', '10k', { silent = true })
set({ 'n', 'x' }, '<C-k>', '10j', { silent = true })
set({ 'n', 'x' }, '<leader>ze', '0')
set({ 'n', 'x' }, '<leader>on', '1')
set({ 'n', 'x' }, '<leader>tw', '2')
set({ 'n', 'x' }, '<leader>th', '3')
set({ 'n', 'x' }, '<leader>fo', '4')
set({ 'n', 'x' }, '<leader>fi', '5')
set({ 'n', 'x' }, '<leader>si', '6')
set({ 'n', 'x' }, '<leader>se', '7')
set({ 'n', 'x' }, '<leader>ei', '8')
set({ 'n', 'x' }, '<leader>ni', '9')

set({ 'n', 'i', 'x' }, '<C-Up>', '10k', { silent = true })
set({ 'n', 'i', 'x' }, '<S-Up>', '<C-y>', { silent = true })
set({ 'n', 'i', 'x' }, '<C-Down>', '10j', { silent = true })
set({ 'n', 'i', 'x' }, '<S-Down>', '<C-e>', { silent = true })
set({ 'n', 'i', 'x' }, '<S-C-Up>', '10<C-y>', { silent = true })
set({ 'n', 'i', 'x' }, '<S-C-Down>', '10<C-e>', { silent = true })

set({ "n", "v", "o", "x" }, "i", "k", { nowait = true })
set({ "n", "v", "o", "x" }, "k", "j", { nowait = true })
set({ "n", "v", "o", "x" }, "j", "h", { nowait = true })

set("n", "<leader>tn", function() vim.cmd("tab split") end)

set("n", "vd", function()
  vim.diagnostic.open_float(nil, {
    scope = "line",
    focusable = true,
    border = "rounded",
  })
end)

set("n", "<leader>cd", function()
  local ok, dir = pcall(vim.fn.input, ":", "", "dir")

  if not ok or dir == nil or dir == "" then
    return
  end

  vim.api.nvim_set_current_dir(vim.fn.fnamemodify(dir, ":p"))
end)

set("n", "<leader>gi", function()
  local remote = vim.fn.systemlist("git config --get remote.origin.url")[1]

  if remote == nil or remote == "" then
    vim.notify("No git remote found", vim.log.levels.WARN)
    return
  end

  local url = remote
  :gsub("%.git$", "")
  :gsub("^git@github.com:", "https://github.com/")
  :gsub("^ssh://git@github.com/", "https://github.com/")
  :gsub("^https://github.com/", "https://github.com/")
  .. "/issues"

  local edge = vim.fn.exepath("msedge")

  if edge == "" then
    local candidates = {
      vim.env["ProgramFiles(x86)"] .. "\\Microsoft\\Edge\\Application\\msedge.exe",
      vim.env.ProgramFiles .. "\\Microsoft\\Edge\\Application\\msedge.exe",
      vim.env.LOCALAPPDATA .. "\\Microsoft\\Edge\\Application\\msedge.exe",
    }

    for _, path in ipairs(candidates) do
      if vim.fn.executable(path) == 1 then
        edge = path
        break
      end
    end
  end

  if edge == "" then
    vim.notify("Could not find msedge.exe", vim.log.levels.ERROR)
    return
  end

  vim.system({
    edge,
    "--new-window",
    url,
  }, { detach = true })
end)

set("n", "<leader>gp", function()
  if vim.fn.systemlist("git config --get remote.origin.url")[1] == nil
    or vim.fn.systemlist("git config --get remote.origin.url")[1] == "" then
    vim.notify("No git remote found", vim.log.levels.WARN)
    return
  end

  vim.system({
    vim.env.ComSpec or "cmd.exe",
    "/c",
    "start",
    "",
    "msedge",
    "--new-window",
    vim.fn.systemlist("git config --get remote.origin.url")[1]
    :gsub("%.git$", "")
    :gsub("^git@github.com:", "https://github.com/")
    :gsub("^ssh://git@github.com/", "https://github.com/")
    :gsub("^https://github.com/", "https://github.com/")
    .. "/pulls",
  }, { detach = true })
end, {
desc = "Open GitHub pull requests for current project",
})

vim.keymap.set("n", "<leader>gm", function()
  local remote = vim.fn.system("git config --get remote.origin.url"):gsub("%s+$", "")

  local repo = remote
  :gsub("^git@github.com:", "https://github.com/")
  :gsub("^https://github.com/", "https://github.com/")
  :gsub("%.git$", "")

  if repo == "" or not repo:match("^https://github.com/") then
    vim.notify("No GitHub remote found", vim.log.levels.ERROR)
    return
  end

  local url = repo .. "/commits"

  if vim.fn.has("win32") == 1 then
    vim.fn.jobstart({
      "cmd.exe",
      "/c",
      "start",
      "",
      "msedge",
      "--new-window",
      url,
    }, { detach = true })
  elseif vim.fn.has("mac") == 1 then
    vim.fn.jobstart({
      "open",
      "-na",
      "Microsoft Edge",
      "--args",
      "--new-window",
      url,
    }, { detach = true })
  else
    local edge_cmds = {
      "microsoft-edge",
      "microsoft-edge-stable",
      "msedge",
    }

    for _, cmd in ipairs(edge_cmds) do
      if vim.fn.executable(cmd) == 1 then
        vim.fn.jobstart({
          cmd,
          "--new-window",
          url,
        }, { detach = true })
        return
      end
    end

    vim.notify("Microsoft Edge not found", vim.log.levels.ERROR)
  end
end, { desc = "Open GitHub commits page in Edge" })

set("n", "<leader>cl", function()
  vim.schedule(function()
    vim.o.cmdheight = 0
    vim.o.cmdheight = 1
    require("noice").cmd("dismiss")
  end)
end)

set({ 'n', 'i' }, '<C-Tab>', function()
  vim.cmd('tabnext ' .. ((vim.fn.tabpagenr() % vim.fn.tabpagenr('$')) + 1))
end, { silent = true })

set({ 'n', 'i' }, '<S-Tab>', function()
  local current = vim.fn.tabpagenr()
  local total = vim.fn.tabpagenr('$')
  vim.cmd('tabnext ' .. ((current - 2 + total) % total + 1))
end, { silent = true })

local function close_tab_or_blank()
  if vim.fn.tabpagenr("$") > 1 then
    vim.cmd("tabclose")
    return
  end

  vim.cmd("tabnew")
  vim.cmd("tabprevious")

  local ok, err = pcall(vim.cmd, "tabclose")

  if not ok then
    vim.cmd("tabnext")
    pcall(vim.cmd, "tabclose")
    vim.notify(err, vim.log.levels.ERROR)
  end
end

set("n", "<leader>bd", close_tab_or_blank)
