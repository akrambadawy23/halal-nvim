vim.g.mapleader = " "

--ex remap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--paste remap
vim.api.nvim_set_keymap('i', '<C-v>', '<Esc>"+pa', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '<Esc>"+pa', { noremap = true, silent = true })

--redo remap
vim.keymap.set("i", '<C-S-z>', vim.cmd.redo) 
vim.keymap.set("n", '<C-S-z>', vim.cmd.redo)

--undo remap
vim.keymap.set("i", '<C-z>', vim.cmd.undo) 
vim.keymap.set("n", '<C-z>', vim.cmd.undo) 
