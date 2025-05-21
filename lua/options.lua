vim.g.mapleader = ' '

vim.opt.number = false
vim.opt.wrap = false
vim.opt.scroll = 8
vim.opt.showtabline = 1
vim.opt.timeout = false
vim.opt.termguicolors = true

--vim.opt.guifont = 'JetBrains Mono'
--vim.opt.guifont = 'Fira Code'
--vim.opt.guifont = 'Monaco'
vim.opt.guifont = 'Source Code Pro'

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = true
vim.opt.foldlevel = 99

vim.opt.fillchars:append({ fold = ' ' })
vim.opt.foldtext = 'v:lua.CustomFoldText()'

function _G.CustomFoldText()
  local line = vim.fn.getline(vim.v.foldstart)
    return line
end

--vim.cmd('colorscheme gruvbox')
--vim.cmd('colorscheme vscode')
vim.cmd('colorscheme onedark')
--vim.cmd('colorscheme onenord')
--vim.cmd('colorscheme material')
--vim.cmd('colorscheme material-palenight')
--vim.cmd('colorscheme material-darker')
