vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    update_focused_file = {
        enable = false,
        update_root = false,
        ignore_list = {},
    },
})

local api = require "nvim-tree.api"

vim.keymap.set({'n', 'i'}, '<C-j><C-o>', api.tree.toggle)
