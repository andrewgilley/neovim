vim.keymap.set({'n', 'v', 'o'}, 'i', 'k')
vim.keymap.set({'n', 'v', 'o'}, 'k', 'j')
vim.keymap.set({'n', 'v', 'o'}, 'j', 'h')

vim.keymap.set('n', 'n', 'i')
vim.keymap.set('n', 'N', 'I')

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

vim.keymap.set({ 'i', 't' }, 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set({ 'i', 't' }, 'JK' , '<Esc>', { noremap = true, silent = true })

vim.keymap.set('n', '<Tab>', 'n', { silent = true })
vim.keymap.set('n', '<S-Tab>', 'N', { silent = true })

vim.keymap.set('n', '<leader>w', ':silent w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>aq', ':q!<CR>')

vim.keymap.set('n', '<leader>cl', ':<CR>', { silent = false })

vim.keymap.set('n', 'cw', '<Nop>')

vim.keymap.set('n', '<leader>cw', 'ciw', { silent = true })
vim.keymap.set('n', '<leader>cp', 'cib', { silent = true })
vim.keymap.set('n', '<leader>cb', 'ci{', { silent = true })
vim.keymap.set('n', '<leader>cs', 'ci\'', { silent = true })
vim.keymap.set('n', '<leader>cd', 'ci"', { silent = true })
vim.keymap.set('n', '<leader>ca', 'ci<', { silent = true })

vim.keymap.set('n', 'q', ':nohlsearch<CR>', { silent = true })

vim.keymap.set({ 'n', 'x' }, '<C-i>', '10k', { silent = true })
vim.keymap.set({ 'n', 'x' }, '<C-k>', '10j', { silent = true })

vim.keymap.set({ 'n', 'x' }, '<C-Up>', '10k', { silent = true })
vim.keymap.set({ 'n', 'x' }, '<C-Down>', '10j', { silent = true })

vim.keymap.set('n', '<C-l>', '10l', { silent = true })
vim.keymap.set('n', '<C-j>', '10h', { silent = true })

vim.keymap.set({ 'n', 'i' }, '<C-Right>', '10l', { silent = true })
vim.keymap.set({ 'n', 'i' }, '<C-Left>', '10h', { silent = true })

vim.keymap.set('i', '<C-c>', '<Esc>', { silent = true })

vim.keymap.set('v', '<C-c>', '"+y', { silent = true })
vim.keymap.set('v', '<C-v>', '"+p')

vim.keymap.set('i', '<C-v>', '<C-r>+')
vim.keymap.set('c', '<C-v>', '<C-r>+')

vim.keymap.set('n', '<C-w>a', '<C-w>w', { silent = true })

vim.keymap.set('v', '<C-y>', '"+y', { silent = true })

vim.keymap.set('n', 'yy', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '<Nop>', { noremap = true, silent = true })

vim.keymap.set('n', 'cl', 'yy', { noremap = true, silent = true })
vim.keymap.set('n', 'dl', 'dd', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>so', ':so<CR>', { silent = true })
vim.keymap.set('n', '<leader>sq', ':s/\"/\'/g<CR>q', { silent = true })

vim.keymap.set('n', '<leader>dr', ':cd %:p:h<CR>:pwd<CR>', { silent = true })

vim.keymap.set('n', '<leader>ck', ':checkhealth vim.lsp<CR>', { silent = true })

vim.keymap.set('n', '<leader>ch', ':lua vim.opt.cmdheight = 0<CR>', { silent = true })
vim.keymap.set('n', '<leader>cm', ':lua vim.opt.cmdheight = 1<CR>', { silent = true })

vim.keymap.set('n', '<leader>vd', ':lua vim.diagnostic.open_float()<CR>', { silent = true })

vim.keymap.set('n', '<leader>vs', function()
  vim.cmd('vs')
  vim.g.neovide_scale_factor = 0.8347
end, { silent = true })

vim.keymap.set({ 'n', 'i' }, '<C-Tab>', '<Esc>:bn<CR>', { silent = true })
vim.keymap.set('n', '<C-S-Tab>', ':bp<CR>', { silent = true })

vim.keymap.set('n', '<leader>bd', ':bd<CR>', { silent = true })
vim.keymap.set('n', '<leader>ba', ':b#<CR>', { silent = true })

vim.keymap.set('n', '<leader>br', '$%', { silent = false })
vim.keymap.set({ 'n', 'v' }, '-', '$', { silent = false })

vim.keymap.set({ 'n', 'v' }, 'gt', 'gg', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'gb', 'G', { silent = true })

vim.keymap.set('n', '<leader>in', 'gg=G<CR>', { silent = true })

vim.keymap.set('n', '<leader>en', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<leader>eh', ':lua vim.diagnostic.enable(false, { bufnr = 0 })<CR>', { silent = true })

vim.keymap.set('t', '<C-t>', [[<C-\><C-n>]])

vim.keymap.set('n', '<leader>rl', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { silent = true })

vim.keymap.set('n', '<leader>nu', function()
  local number = vim.wo.number
  vim.wo.number = not number
end, { silent = true })
