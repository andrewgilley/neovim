require("settings.lazy")
require("settings.keymaps")
require("settings.options")
require("settings.autocmd")
require("settings.filetype")
require("settings.colorscheme")

require("settings.format").setup()

local cwd = vim.api.nvim_set_current_dir

-- cwd("C:/Users/andre/Desktop/Dev/code/source/")
-- cwd("C:/Users/andre/Desktop/Dev/code/source/zug/")
-- cwd("C:/Users/andre/Desktop/Dev/code/web/")
-- cwd("C:/Users/andre/Desktop/Dev/code/web/bun/agent")
-- cwd("C:/Users/andre/Desktop/Dev/code/odin/sf/")
-- cwd("C:/Users/andre/Desktop/Dev/code/lua/")
cwd("C:/Users/andre/Desktop/Dev/code/lua/oculus.nvim/")
-- cwd("C:/Users/andre/Desktop/Dev/code/worktrees/neovim/pack-local-plugins/")
-- cwd("C:/Users/andre/AppData/Local/nvim-lazy")
-- cwd("D:/source/")
