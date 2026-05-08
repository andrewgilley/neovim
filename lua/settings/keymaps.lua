vim.keymap.set({ "n", "v", "o", "x" }, "i", "k", { nowait = true })
vim.keymap.set({ "n", "v", "o", "x" }, "k", "j", { nowait = true })
vim.keymap.set({ "n", "v", "o", "x" }, "j", "h", { nowait = true })

vim.keymap.set('n', 'n', 'i', { noremap = true, nowait = true })

vim.keymap.set({ 'n', 'x' }, '<leader>ze', '0')
vim.keymap.set({ 'n', 'x' }, '<leader>on', '1')
vim.keymap.set({ 'n', 'x' }, '<leader>tw', '2')
vim.keymap.set({ 'n', 'x' }, '<leader>th', '3')
vim.keymap.set({ 'n', 'x' }, '<leader>fo', '4')
vim.keymap.set({ 'n', 'x' }, '<leader>fi', '5')
vim.keymap.set({ 'n', 'x' }, '<leader>si', '6')
vim.keymap.set({ 'n', 'x' }, '<leader>se', '7')
vim.keymap.set({ 'n', 'x' }, '<leader>ei', '8')
vim.keymap.set({ 'n', 'x' }, '<leader>ni', '9')

vim.keymap.set('x', 'y', 'myy`y', { noremap = true })

vim.keymap.set("n", "<C-]>", "n zt10<C-y>$", { silent = true })
vim.keymap.set("n", "<C-[>", "N", { silent = true })

vim.keymap.set("n", "<leader>go", "[{zt10<C-y>$", { silent = true })

vim.keymap.set('n', '<leader>w', ':silent w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':silent q<CR>', { silent = true })
vim.keymap.set('n', '<leader>aw', ':silent w!<CR>:<CR>', { silent = true })
vim.keymap.set('n', '<leader>aq', ':q!<CR>')

vim.keymap.set('n', '<leader>as', 'A;<Esc>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cl", function()
  vim.opt.cmdheight = 1
end)

vim.keymap.set('n', '<S-o>', 'o<Esc>o', { noremap = true })
vim.keymap.set('n', '<A-o>', '<S-o>', { noremap = true })

vim.keymap.set('n', 'cw', 'ciw', { silent = true })
vim.keymap.set('n', 'cp', 'cib', { silent = true })
vim.keymap.set('n', 'cb', 'ci{', { silent = true })
vim.keymap.set('n', 'cs', 'ci\'', { silent = true })
vim.keymap.set('n', 'cd', 'ci"', { silent = true })
vim.keymap.set('n', 'ca', 'ci<', { silent = true })
vim.keymap.set('n', 'cr', 'ci[', { silent = true })

vim.keymap.set('n', 'dw', 'daw', { silent = true })
vim.keymap.set('n', 'dp', 'dap', { silent = true })

vim.keymap.set('n', 'L', '}k$', { noremap = true, silent = true })

vim.keymap.set('n', 'q', ':nohlsearch<CR>', { silent = true })
vim.keymap.set('n', 'u', ':<C-u>silent undo<CR>', { noremap = true, silent = true })

vim.keymap.set({ 'n', 'x' }, '<C-i>', '10k', { silent = true })
vim.keymap.set({ 'n', 'x' }, '<C-k>', '10j', { silent = true })

vim.keymap.set('n', '<S-i>', '<C-y>', { silent = true })
vim.keymap.set('n', '<S-k>', '<C-e>', { silent = true })

vim.keymap.set('n', '<S-C-i>', '10<C-y>', { silent = true })
vim.keymap.set('n', '<S-C-k>', '10<C-e>', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<C-l>', '10l', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-j>', '10h', { silent = true })

vim.keymap.set({ 'n', 'i', 'x' }, '<C-Up>', '10k', { silent = true })
vim.keymap.set({ 'n', 'i', 'x' }, '<C-Down>', '10j', { silent = true })

vim.keymap.set({ 'n', 'i', 'x' }, '<S-Up>', '<C-y>', { silent = true })
vim.keymap.set({ 'n', 'i', 'x' }, '<S-Down>', '<C-e>', { silent = true })

vim.keymap.set({ 'n', 'i', 'x' }, '<S-C-Up>', '10<C-y>', { silent = true })
vim.keymap.set({ 'n', 'i', 'x' }, '<S-C-Down>', '10<C-e>', { silent = true })

vim.keymap.set({ 'n', 'i' }, '<C-Right>', '10l', { silent = true })
vim.keymap.set({ 'n', 'i' }, '<C-Left>', '10h', { silent = true })

vim.keymap.set('n', '<C-z>', 'zh')
vim.keymap.set('n', '<C-x>', 'zl')

vim.keymap.set('n', '<leader>sz', '^hzs$')

vim.keymap.set('n', '<leader>st', 'zt5<C-y>$', { noremap = true })
vim.keymap.set('n', '<leader>sc', 'zt10<C-y>$', { noremap = true })
vim.keymap.set('n', '<leader>sm', 'zt10<C-y>$', { noremap = true })
vim.keymap.set('n', '<leader>sb', 'zt25<C-y>$', { noremap = true })

vim.keymap.set('n', '<leader>sr', ':silent source .session.vim<CR>', { silent = true })

vim.keymap.set('n', '<leader>ew', '<C-w>=')

vim.keymap.set('n', '<C-s>', '<C-w>r')

vim.keymap.set('n', '<C-c>', '<Esc>', { silent = true })
vim.keymap.set('i', '<C-c>', '<Esc>', { silent = true })

vim.keymap.set('v', '<C-c>', '"+y', { silent = true })

vim.keymap.set('v', '<C-p>', '"+p', { noremap = true })
vim.keymap.set('n', '<C-p>', '"+p')
vim.keymap.set('i', '<C-p>', '<C-r><C-p>+')
vim.keymap.set('c', '<C-p>', '<C-r>+')

vim.keymap.set("n", "<S-p>", "o<Esc>p")

vim.keymap.set('v', '<C-y>', '"+y', { silent = true })

vim.keymap.set('n', '<C-a>', '<C-w>w', { silent = true })

vim.keymap.set('n', 'yy', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '<Nop>', { noremap = true, silent = true })

vim.keymap.set('n', 'cl', 'yy', { noremap = true, silent = true })
vim.keymap.set('n', 'dl', 'dd', { noremap = true, silent = true })

vim.keymap.set('n', 'zO', 'zR', { noremap = true, silent = true })
vim.keymap.set('n', 'zC', 'zM', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>so', ':silent w<CR>:so<CR>', { silent = true })

vim.keymap.set('n', '<leader>sd', ':cd %:p:h<CR>:pwd<CR>', { silent = true })

vim.keymap.set('n', '<leader>cpd', ':cd ..<CR>:pwd<CR>', { silent = true })
vim.keymap.set('n', '<leader>pwd', ':pwd<CR>', { silent = true })

vim.keymap.set('n', '<leader>ch', ':checkhealth vim.lsp<CR>', { silent = true })

vim.keymap.set('n', '<leader>co', 'gcc', { remap = true, silent = true })

vim.keymap.set('n', '<leader>vs', ':vs<CR>', { silent = true })
vim.keymap.set('n', '<leader>hs', ':split<CR>', { silent = true })

vim.keymap.set('n', '<leader>ma', ':Mason<CR>' , { silent = true })

vim.keymap.set({ 'n', 'i' }, '<S-3>', '<Esc>:tabn<CR>', { silent = true })
vim.keymap.set({ 'n', 'i' }, '<S-1>', '<Esc>:tabp<CR>', { silent = true })

vim.keymap.set({ 'n', 'i' }, '<leader>tn', '<Esc>:tabn<CR>', { silent = true })
vim.keymap.set({ 'n', 'i' }, '<leader>tp', '<Esc>:tabp<CR>', { silent = true })

vim.keymap.set('n', '<leader>td', ':tab split<CR>', { silent = true })

vim.keymap.set({ 'n', 'i' }, '<C-Tab>', '<Esc>:bn<CR>', { silent = true })
vim.keymap.set({ 'n', 'i' }, '<S-Tab>', '<Esc>:bp<CR>', { silent = true })

vim.keymap.set({ 'n', 'i' }, '<leader>bn', '<Esc>:bn<CR>', { silent = true })
vim.keymap.set({ 'n', 'i' }, '<leader>bp', '<Esc>:bp<CR>', { silent = true })

vim.keymap.set('n', '<leader>bd', ':bd<CR>', { silent = true })
vim.keymap.set('n', '<leader>ba', ':b#<CR>', { silent = true })

vim.keymap.set('n', '<leader>in', 'mzgg=G``zzzt15<C-y>$', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<leader>br', '%', { remap = true })
vim.keymap.set({ 'n', 'v' }, '-', '$', { silent = false })

vim.keymap.set({ 'n', 'v' }, 'gb', 'G', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'gs', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'gl', '$', { silent = true })

vim.keymap.set('n', '<', '<<', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>en', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<leader>eh', ':lua vim.diagnostic.enable(false, { bufnr = 0 })<CR>', { silent = true })

vim.keymap.set('t', '<C-d>', [[<C-\><C-n>]])

local function system_first_line(cmd)
  local lines = vim.fn.systemlist(cmd)

  if vim.v.shell_error ~= 0 then
    return nil
  end

  local line = lines[1]
  if not line or line == "" then
    return nil
  end

  return line:gsub("%s+$", "")
end

local function github_repo_from_remote(remote_url)
  local repo = remote_url:match("github%.com[:/](.+)$")
  if not repo then
    return nil
  end

  return repo:gsub("%.git$", "")
end

local function github_repo_for_dir(dir)
  local remotes = { "origin", "upstream" }

  for _, remote in ipairs(remotes) do
    local remote_url = system_first_line({ "git", "-C", dir, "config", "--get", "remote." .. remote .. ".url" })
    local repo = remote_url and github_repo_from_remote(remote_url)

    if repo then
      return repo
    end
  end

  return nil
end

local function github_repo_for_path(path)
  return github_repo_for_dir(vim.fn.fnamemodify(path, ":h"))
end

local function git_relative_path(path)
  local dir = vim.fn.fnamemodify(path, ":h")
  local root = system_first_line({ "git", "-C", dir, "rev-parse", "--show-toplevel" })
  if not root then
    return nil
  end

  local normalized_path = vim.fs.normalize(path):gsub("\\", "/")
  local normalized_root = vim.fs.normalize(root):gsub("\\", "/"):gsub("/+$", "")
  local path_prefix = normalized_root .. "/"

  if normalized_path:lower():sub(1, #path_prefix) ~= path_prefix:lower() then
    return nil
  end

  return normalized_path:sub(#path_prefix + 1)
end

local function git_default_branch_for_path(path)
  local dir = vim.fn.fnamemodify(path, ":h")
  local ref = system_first_line({ "git", "-C", dir, "symbolic-ref", "--short", "refs/remotes/origin/HEAD" })
  if ref then
    return ref:gsub("^origin/", "")
  end

  return system_first_line({ "git", "-C", dir, "branch", "--show-current" }) or "main"
end

local function first_executable(names)
  for _, name in ipairs(names) do
    local path = vim.fn.exepath(name)
    if path ~= "" then
      return path
    end
  end

  return nil
end

local function first_existing_file(paths)
  local uv = vim.uv or vim.loop

  for _, path in ipairs(paths) do
    if path and uv.fs_stat(path) then
      return path
    end
  end

  return nil
end

local function github_browser_command(url)
  local configured_browser = vim.g.github_browser or vim.env.NVIM_GITHUB_BROWSER or vim.env.BROWSER
  if configured_browser and configured_browser ~= "" then
    return { configured_browser, "--new-window", url }
  end

  if vim.fn.has("win32") == 1 then
    local browser = first_executable({ "chrome", "msedge", "brave", "firefox" })
    or first_existing_file({
      vim.env.LOCALAPPDATA and (vim.env.LOCALAPPDATA .. "\\Google\\Chrome\\Application\\chrome.exe"),
      vim.env.PROGRAMFILES and (vim.env.PROGRAMFILES .. "\\Google\\Chrome\\Application\\chrome.exe"),
      vim.env["PROGRAMFILES(X86)"] and (vim.env["PROGRAMFILES(X86)"] .. "\\Google\\Chrome\\Application\\chrome.exe"),
      vim.env.LOCALAPPDATA and (vim.env.LOCALAPPDATA .. "\\Microsoft\\Edge\\Application\\msedge.exe"),
      vim.env.PROGRAMFILES and (vim.env.PROGRAMFILES .. "\\Microsoft\\Edge\\Application\\msedge.exe"),
      vim.env["PROGRAMFILES(X86)"] and (vim.env["PROGRAMFILES(X86)"] .. "\\Microsoft\\Edge\\Application\\msedge.exe"),
      vim.env.LOCALAPPDATA and (vim.env.LOCALAPPDATA .. "\\BraveSoftware\\Brave-Browser\\Application\\brave.exe"),
      vim.env.PROGRAMFILES and (vim.env.PROGRAMFILES .. "\\BraveSoftware\\Brave-Browser\\Application\\brave.exe"),
      vim.env["PROGRAMFILES(X86)"] and (vim.env["PROGRAMFILES(X86)"] .. "\\BraveSoftware\\Brave-Browser\\Application\\brave.exe"),
      vim.env.PROGRAMFILES and (vim.env.PROGRAMFILES .. "\\Mozilla Firefox\\firefox.exe"),
      vim.env["PROGRAMFILES(X86)"] and (vim.env["PROGRAMFILES(X86)"] .. "\\Mozilla Firefox\\firefox.exe"),
    })

    if browser then
      return { browser, "--new-window", url }
    end
  end

  return nil
end

local function open_url(url)
  local browser_cmd = github_browser_command(url)
  if browser_cmd then
    local ok = pcall(vim.system, browser_cmd, { detach = true })
    if ok then
      return
    end
  end

  local ok, err = pcall(vim.ui.open, url)

  if not ok then
    vim.notify("Could not open GitHub URL: " .. tostring(err), vim.log.levels.ERROR)
  end
end

local function url_encode(value)
  return tostring(value):gsub("\n", "\r\n"):gsub("([^%w%-%._~])", function(char)
    return string.format("%%%02X", string.byte(char))
  end)
end

local function path_encode(value)
  return tostring(value):gsub("\\", "/"):gsub("[^/]+", url_encode)
end

local function open_github_search(repo, kind, query, anchor)
  local encoded_query = query:gsub(" ", "+")
  local url = ("https://github.com/%s/%s?q=%s"):format(repo, kind, encoded_query)

  open_url(url, anchor)
end

local function json_decode(value)
  if vim.json and vim.json.decode then
    local ok, decoded = pcall(vim.json.decode, value)
    if ok then
      return decoded
    end
  end

  local ok, decoded = pcall(vim.fn.json_decode, value)
  if ok then
    return decoded
  end

  return nil
end

local function pr_file_path(file)
  if type(file) ~= "table" then
    return nil
  end

  return file.path or file.filename or file.name
end

local function pr_file_matches(file, target)
  local path = pr_file_path(file)
  if path and path:gsub("\\", "/") == target then
    return true
  end

  local previous_path = file.previousFilename or file.previous_filename
  return previous_path and previous_path:gsub("\\", "/") == target
end

local function pr_changes_file(pr, target)
  for _, file in ipairs(pr.files or {}) do
    if pr_file_matches(file, target) then
      return true
    end
  end

  return false
end

local function open_pr_file_search_results(repo, file, prs, checked_count)
  local refs = {}
  for _, pr in ipairs(prs) do
    if pr.number then
      table.insert(refs, "#" .. tostring(pr.number))
    end
  end

  local query
  if #refs == 0 then
    query = "is:pr #0"
  elseif #refs == 1 then
    query = "is:pr " .. refs[1]
  else
    query = "is:pr (" .. table.concat(refs, " OR ") .. ")"
  end

  open_github_search(repo, "pulls", query)
end

local function fetch_prs_changing_file(repo, file)
  local cmd = {
    "gh",
    "pr",
    "list",
    "--repo",
    repo,
    "--state",
    "all",
    "--limit",
    "100",
    "--json",
    "number,files",
  }

  vim.system(cmd, { text = true }, function(result)
    vim.schedule(function()
      if result.code ~= 0 then
        local err = vim.trim(result.stderr or result.stdout or "")
        vim.notify("Could not fetch PR metadata: " .. err, vim.log.levels.ERROR)
        return
      end

      local prs = json_decode(result.stdout or "")
      if type(prs) ~= "table" then
        vim.notify("Could not parse PR metadata from gh", vim.log.levels.ERROR)
        return
      end

      local matches = {}
      for _, pr in ipairs(prs) do
        if pr_changes_file(pr, file) then
          table.insert(matches, pr)
        end
      end

      open_pr_file_search_results(repo, file, matches, #prs)
    end)
  end)
end

vim.keymap.set("n", "<leader>gi", function()
  local abs_path = vim.fn.expand("%:p")
  if abs_path == "" then
    local repo = github_repo_for_dir(vim.fn.getcwd())
    if not repo then
      vim.notify("Could not find a GitHub remote for the current directory", vim.log.levels.ERROR)
      return
    end

    open_url("https://github.com/" .. repo .. "/issues")
    return
  end

  local repo = github_repo_for_path(abs_path)
  if not repo then
    vim.notify("Could not find a GitHub remote for this repo", vim.log.levels.ERROR)
    return
  end

  local file = vim.fn.expand("%:t")
  local query = 'is:issue "' .. file .. '"'
  open_github_search(repo, "issues", query)
end, { desc = "Open GitHub issues search for current file" })

vim.keymap.set("n", "<leader>gm", function()
  local abs_path = vim.fn.expand("%:p")
  if abs_path == "" then
    local repo = github_repo_for_dir(vim.fn.getcwd())
    if not repo then
      vim.notify("Could not find a GitHub remote for the current directory", vim.log.levels.ERROR)
      return
    end

    open_url("https://github.com/" .. repo .. "/commits")
    return
  end

  local repo = github_repo_for_path(abs_path)
  if not repo then
    vim.notify("Could not find a GitHub remote for this repo", vim.log.levels.ERROR)
    return
  end

  local file = git_relative_path(abs_path)
  if not file then
    vim.notify("Could not determine current file path relative to git root", vim.log.levels.ERROR)
    return
  end

  local branch = git_default_branch_for_path(abs_path)
  open_url("https://github.com/" .. repo .. "/commits/" .. path_encode(branch) .. "/" .. path_encode(file))
end, { desc = "Open GitHub commits changing current file" })

local function append_anchor(url, anchor)
  if not anchor or anchor == "" then
    return url
  end

  anchor = anchor:gsub("^#", "")
  return url .. "#" .. anchor
end

local function open_url(url, anchor)
  vim.ui.open(append_anchor(url, anchor))
end

vim.keymap.set("n", "<leader>gp", function()
  local abs_path = vim.fn.expand("%:p")

  if abs_path == "" then
    local repo = github_repo_for_dir(vim.fn.getcwd())
    if not repo then
      vim.notify("Could not find a GitHub remote for the current directory", vim.log.levels.ERROR)
      return
    end

    open_github_search(repo, "pulls", "is:pr", "issue_search_results")
    return
  end

  local repo = github_repo_for_path(abs_path)
  if not repo then
    return
  end

  local file = git_relative_path(abs_path)
  if not file then
    vim.notify("Could not determine current file path relative to git root", vim.log.levels.ERROR)
    return
  end

  fetch_prs_changing_file(repo, file, "issue_search_results")
end, { desc = "Open PRs changing current file" })

vim.keymap.set('n', '<leader>vd', function()
  vim.diagnostic.open_float({
    scope = "line",
    border = "rounded",
  })
end, { silent = true })

vim.keymap.set('n', '<leader>rl', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { silent = true })

vim.keymap.set("n", "<leader>cl", function()
  local view = vim.fn.winsaveview()

  if vim.o.cmdheight == 0 then
    vim.o.cmdheight = 1
  else
    vim.o.cmdheight = 0
    vim.o.cmdheight = 1
  end

  vim.fn.winrestview(view)
end)

vim.keymap.set('n', '<leader>nu', function()
  local number = vim.wo.number
  vim.wo.number = not number
end, { silent = true })

vim.keymap.set('n', '<leader>cd', function()
  local path = vim.fn.input(':', '', 'dir')
  if path ~= "" then
    vim.cmd('cd ' .. path)
    --print(vim.fn.getcwd())
    vim.opt.cmdheight = 0
    vim.opt.cmdheight = 1
  end
end)

vim.keymap.set('n', '<leader>rs', function()
  local line = vim.api.nvim_get_current_line()

  if line:find("\\") then
    local new_line = line:gsub("\\", "/")
    vim.api.nvim_set_current_line(new_line)
  elseif line:find("/") then
    local new_line = line:gsub("/", "\\")
    vim.api.nvim_set_current_line(new_line)
  end
end)

local gt_view = nil

vim.keymap.set({ 'n', 'v' }, 'gt', function()
  gt_view = vim.fn.winsaveview()
  vim.cmd('normal! gg0')
end, { silent = true })

vim.keymap.set('n', 'gr', function()
  if gt_view then
    vim.fn.winrestview(gt_view)
  end
end, { silent = true, nowait = true })

vim.keymap.set('n', '<leader>eb', function()
  local view = vim.fn.winsaveview()
  local saved_scrolloff = vim.o.scrolloff

  vim.o.scrolloff = 0
  vim.cmd('silent w')
  vim.cmd('lockmarks edit!')
  vim.fn.winrestview(view)
  vim.o.scrolloff = saved_scrolloff
end, { silent = true })
