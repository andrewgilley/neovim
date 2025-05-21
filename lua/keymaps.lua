vim.keymap.set( 'n', 'W', ':silent w<CR>', { silent = true })
vim.keymap.set( 'n', 'Q', ': q<CR>')

vim.keymap.set('n', 'q', ':nohlsearch<CR>')

vim.keymap.set('n', '<C-Up>', '<C-u>', { silent = true })
vim.keymap.set('n', '<C-Down>', '<C-d>', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-u>', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-d>', { silent = true })

vim.keymap.set('n', '<C-v>', '"+p')
vim.keymap.set('v', '<C-v>', '"+p')
vim.keymap.set('i', '<C-v>', '<C-r>+')

vim.keymap.set('n', '<leader>so', ':so<CR>', { silent = true })
vim.keymap.set('n', '<leader>sq', ':s/\"/\'/g<CR>q<CR>', { silent = false })
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { silent = false })
vim.keymap.set('n', '<leader>ch', ':checkhealth vim.lsp<CR>', { silent = false })
vim.keymap.set('n', '<leader>bp', ':b#<CR>', { silent = false })

vim.keymap.set('n', '<leader>rl', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { silent = true})

vim.keymap.set('n', '<leader>cs', function()
  require('colorscheme').pick_colorscheme()
end)


vim.keymap.set('t', '<C-c>', [[<C-\><C-n>:bd!<CR>]], { silent = true })

