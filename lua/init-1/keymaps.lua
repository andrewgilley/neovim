vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.keymap.set('n', 'W', ':silent w<CR>', { silent = true })
vim.keymap.set('n', 'Q', ': q<CR>')
vim.keymap.set('n', '-', '$', { noremap = true })

vim.keymap.set('n', '<leader>w', ':silent w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>')

vim.keymap.set('n', 'q', ':nohlsearch<CR>', { silent = true })

vim.keymap.set('n', '<C-k>', '<C-u>', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-d>', { silent = true })

vim.keymap.set('i', '<C-c>', '<Esc>', { silent = true })

vim.keymap.set('n', '<C-v>', '"+p')
vim.keymap.set('v', '<C-v>', '"+p')
vim.keymap.set('i', '<C-v>', '<C-r>+')
vim.keymap.set('c', '<C-v>', '<C-r>+')

vim.keymap.set('n', '<leader>vb', '<C-v>', { silent = true })

vim.keymap.set('v', '<C-y>', '"+y', { silent = true })

vim.keymap.set('n', 'yy', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '<Nop>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'cl', 'yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dl', 'dd', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>so', ':so<CR>', { silent = true })
vim.keymap.set('n', '<leader>sq', ':s/\"/\'/g<CR>q<CR>', { silent = true })
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { silent = true })
vim.keymap.set('n', '<leader>ch', ':checkhealth vim.lsp<CR>', { silent = false })

vim.keymap.set('n', '<leader>vd', ':lua vim.diagnostic.open_float()<CR>', { silent = false })

vim.keymap.set('n', '<leader>bn', ':bn<CR>', { silent = true })
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<leader>bl', ':b#<CR>', { silent = true })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { silent = true })

vim.keymap.set('n', '<leader>en', ':enew<CR>', { silent = true })

vim.keymap.set('n', '<leader>tb', ':tabs<CR>', { silent = true })
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>:terminal pwsh.exe<CR>i', { silent = true })
vim.keymap.set('n', '<leader>tl', 'gt<CR>', { silent = true })

vim.keymap.set('t', '<C-n>', [[<C-\><C-n>]])

vim.keymap.set('n', '<leader>rl', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { silent = true})
