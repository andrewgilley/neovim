vim.keymap.set({"n", "v", "o"}, "i", "k")
vim.keymap.set({"n", "v", "o"}, "k", "j")
vim.keymap.set({"n", "v", "o"}, "j", "h")

vim.keymap.set('n', 'n', 'i', { noremap = true })

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

vim.keymap.set('n', '<ScrollWheelUp>', '4<C-y>', { silent = true })
vim.keymap.set('n', '<ScrollWheelDown>', '4<C-e>', { silent = true })

vim.keymap.set('i', '<ScrollWheelUp>', '<C-o>3<C-y>', { silent = true })
vim.keymap.set('i', '<ScrollWheelDown>', '<C-o>3<C-e>', { silent = true })

vim.keymap.set({ 'i', 't' }, 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set({ 'i', 't' }, 'JK' , '<Esc>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-]>', 'n')
vim.keymap.set('n', '<C-[>', 'N')

vim.keymap.set('n', '<leader>w', ':silent w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':silent q<CR>', { silent = true })
vim.keymap.set('n', '<leader>aw', ':silent w!<CR>:<CR>', { silent = true })
vim.keymap.set('n', '<leader>aq', ':q!<CR>')

vim.keymap.set("n", "<leader>cl", function()
  vim.opt.cmdheight = 0
  vim.opt.cmdheight = 1
end)

vim.keymap.set('n', '<S-o>', 'o<Esc>o<Esc>', { noremap = true })

vim.keymap.set('n', 'cw', 'ciw', { silent = true })
vim.keymap.set('n', 'cp', 'cib', { silent = true })
vim.keymap.set('n', 'cb', 'ci{', { silent = true })
vim.keymap.set('n', 'cs', 'ci\'', { silent = true })
vim.keymap.set('n', 'cd', 'ci"', { silent = true })
vim.keymap.set('n', 'ca', 'ci<', { silent = true })
vim.keymap.set('n', 'cr', 'ci[', { silent = true })

vim.keymap.set('n', '<leader>co', '^i--<Esc>^', { silent = true })
vim.keymap.set('n', '<leader>cu', '^2x<Esc>^', { silent = true })

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

vim.keymap.set('n', '<leader>sc', 'zt10<C-y>$', { noremap = true })
vim.keymap.set('n', '<leader>sm', 'zt15<C-y>$', { noremap = true })

vim.keymap.set('i', '<C-c>', '<Esc>', { silent = true })

vim.keymap.set('v', '<C-c>', '"+y', { silent = true })
vim.keymap.set('v', '<C-p>', '"+p')

vim.keymap.set('n', '<C-p>', '"+p')

vim.keymap.set('i', '<C-p>', '<C-r>+')
vim.keymap.set('c', '<C-p>', '<C-r>+')

vim.keymap.set('n', '<C-a>', '<C-w>w', { silent = true })

vim.keymap.set('v', '<C-y>', '"+y', { silent = true })

vim.keymap.set('n', 'yy', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '<Nop>', { noremap = true, silent = true })

vim.keymap.set("n", "<S-p>", "o<Esc>p")

vim.keymap.set('n', 'cl', 'yy', { noremap = true, silent = true })
vim.keymap.set('n', 'dl', 'dd', { noremap = true, silent = true })

vim.keymap.set('n', 'zO', 'zR', { noremap = true, silent = true })
vim.keymap.set('n', 'zC', 'zM', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>so', ':silent w<CR>:so<CR>', { silent = true })

vim.keymap.set('n', '<leader>cdr', ':cd %:p:h<CR>:pwd<CR>', { silent = true })

vim.keymap.set('n', '<leader>cpd', ':cd ..<CR>:pwd<CR>', { silent = true })
vim.keymap.set('n', '<leader>pwd', ':pwd<CR>', { silent = true })

vim.keymap.set('n', '<leader>ch', ':checkhealth vim.lsp<CR>', { silent = true })
vim.keymap.set('n', '<leader>vd', ':lua vim.diagnostic.open_float()<CR>', { silent = true })

vim.keymap.set('n', '<leader>vs', ':vs<CR>', { silent = true })

vim.keymap.set('n', '<leader>ma', ':Mason<CR>' , { silent = true })

vim.keymap.set({ 'n', 'i' }, '<C-Tab>', '<Esc>:bn<CR>zt10<C-y>', { silent = true })
vim.keymap.set('n', '<C-S-Tab>', ':bp<CR>', { silent = true })

vim.keymap.set('n', '<leader>bd', ':bd<CR>', { silent = true })
vim.keymap.set('n', '<leader>ba', ':b#<CR>', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<leader>br', '$%', { silent = false })
vim.keymap.set({ 'n', 'v' }, '-', '$', { silent = false })

vim.keymap.set({ 'n', 'v' }, 'gt', 'gg0', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'gb', 'G', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'gs', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'gl', '$', { silent = true })

vim.keymap.set('n', '>', '>>', { noremap = true, silent = true })
vim.keymap.set('n', '<', '<<', { noremap = true, silent = true })

vim.keymap.set('v', '<leader>sr', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>sl', '<gv', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>in', 'mzgg=G`z', { silent = true })

vim.keymap.set('n', '<leader>en', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<leader>ec', ':e ~/AppData/Local/nvim-lazy/lua/config/keymaps.lua<CR>', { silent = true })

vim.keymap.set('n', '<leader>eh', ':lua vim.diagnostic.enable(false, { bufnr = 0 })<CR>', { silent = true })

vim.keymap.set('t', '<C-d>', [[<C-\><C-n>]])
vim.keymap.set("n", "<C-c>", "<cmd>echo ''<CR>", { silent = true })

vim.keymap.set('n', '<leader>rl', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { silent = true })

vim.keymap.set('n', '<leader>nu', function()
  local number = vim.wo.number
  vim.wo.number = not number
end, { silent = true })

vim.keymap.set('n', '<leader>cd', function()
  local path = vim.fn.input(':', '', 'dir')
  if path ~= "" then
    vim.cmd('cd ' .. path)
    print(vim.fn.getcwd())
  end
end)
