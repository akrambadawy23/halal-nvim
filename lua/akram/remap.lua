vim.g.mapleader = " "

--ex remap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--paste remap
--vim.api.nvim_set_keymap('i', '<C-v>', '<Esc>"+pa', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-v>', '<Esc>"+pa', { noremap = true, silent = true })

--copy to clipboard
vim.keymap.set("n", "y", '"+y')
vim.keymap.set("n", "yy", '"+yy')
vim.keymap.set("v", "y", '"+y')

--redo remap
vim.keymap.set("i", '<C-S-z>', vim.cmd.redo) 
vim.keymap.set("n", '<C-S-z>', vim.cmd.redo)

--undo remap
vim.keymap.set("i", '<C-z>', vim.cmd.undo) 
vim.keymap.set("n", '<C-z>', vim.cmd.undo) 

--THIS BREAKS ALL CTRL W CMDS (WINDOW COMMANDS)
vim.keymap.set("n", '<C-w>', '<C-w>w')


-- errors

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { noremap = true, silent = true })

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
})

-- disable error popup
local virtual_text_enabled = true

vim.keymap.set('n', '<leader>tv', function()
  virtual_text_enabled = not virtual_text_enabled
  vim.diagnostic.config({ virtual_text = virtual_text_enabled })
  print("virtual_text: " .. tostring(virtual_text_enabled))
end, { noremap = true, silent = true })


