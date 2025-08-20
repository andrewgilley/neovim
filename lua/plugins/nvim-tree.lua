require('nvim-tree').setup({
    view = {
      width = 26,
    },
})

vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>', { silent = true })

vim.keymap.set('n', '<leader>no', function()
    local current_file = vim.fn.expand('%:p')
    local parent_dir = vim.fn.fnamemodify(current_file, ':h')
    require('nvim-tree.api').tree.open({ path = parent_dir })
    vim.cmd('wincmd _ | wincmd |')
end)
