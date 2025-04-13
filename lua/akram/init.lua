require("akram.remap")
vim.o.number = true
vim.o.relativenumber = true
vim.opt.cursorline = true

vim.api.nvim_set_hl(0, "LineNr", { fg = "#363748" })

-- Set current line number (CursorLineNr) to orange #ffa500
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffa500", bold = true })
