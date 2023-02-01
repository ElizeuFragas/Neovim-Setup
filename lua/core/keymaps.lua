vim.o.number=true

local opt = {remap = true}

vim.keymap.set('i', '<C-s>', "<Esc>:w<CR>")
vim.keymap.set('n', '<C-s>', ":w<CR>")
vim.keymap.set('n', '<C-x>', ':wq<CR>')
vim.keymap.set('i', '<C-x>', ':wq<CR>')
vim.keymap.set('i', '<C-q>', '<Esc>:q!<CR>', opt)
vim.keymap.set('n', '<C-q>', ':q!<CR>', opt)
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('v', '<Space>', '<Esc>')
vim.keymap.set('c', '<Leader><Space>', '<Esc>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('i', '<Leader>p', '<ESC>pa')  
vim.keymap.set('n', '<Leader>,', ':bp<CR>', opt)  
vim.keymap.set('n', '<Leader>.', ':bn<CR>', opt)  
vim.keymap.set('n', '<Leader>n', ':bw<CR>', opt)  
vim.keymap.set('n', '<Leader>h', ':vert res -5<CR>')
vim.keymap.set('n', '<Leader>l', ':vert res +5<CR>')
vim.keymap.set('n', '<Leader>j', ':res -5<CR>')
vim.keymap.set('n', '<Leader>k', ':res +5<CR>')


-- javac -d . -p $PATH_TO_FX --add-modules javafx.controls *.java && java -p $PATH_TO_FX --add-modules javafx.controls app.Main

