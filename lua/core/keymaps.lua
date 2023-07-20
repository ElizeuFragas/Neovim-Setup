vim.o.number=true

local opt = {remap = true}

-- save file
vim.keymap.set('i', '<C-s>', "<Esc>:w<CR>")
vim.keymap.set('n', '<C-s>', ":w<CR>")

-- save and quit
vim.keymap.set('n', '<C-x>', ':wq<CR>')
vim.keymap.set('i', '<C-x>', ':wq<CR>')

-- Quit forced
vim.keymap.set('i', '<C-q>', '<Esc>:q!<CR>', opt)
vim.keymap.set('n', '<C-q>', ':q!<CR>', opt)

-- Map jk as Esc key in insert mode
vim.keymap.set('i', 'jk', '<Esc>')

-- Map space key as Esc key in visual mode
vim.keymap.set('v', '<Space>', '<Esc>')

-- Map \space keys as Esc key in command mode
vim.keymap.set('c', '<Leader><Space>', '<Esc>')

-- Move to left splited window
vim.keymap.set('n', '<C-h>', '<C-w>h')

-- Move to right splited window
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Move to up splited window
vim.keymap.set('n', '<C-k>', '<C-w>k')

-- Move to down splited window
vim.keymap.set('n', '<C-j>', '<C-w>j')

-- Copy content in insert mode
vim.keymap.set('i', '<Leader>p', '<ESC>pa')

-- Move to previous tab
vim.keymap.set('n', '<Leader>,', ':bp<CR>', opt)

-- Move to next tab
vim.keymap.set('n', '<Leader>.', ':bn<CR>', opt)

-- Close tab
vim.keymap.set('n', '<Leader>n', ':bw<CR>', opt)

-- Adjust focused splited window
vim.keymap.set('n', '<Leader>h', ':vert res -5<CR>')
vim.keymap.set('n', '<Leader>l', ':vert res +5<CR>')
vim.keymap.set('n', '<Leader>j', ':res -5<CR>')
vim.keymap.set('n', '<Leader>k', ':res +5<CR>')

