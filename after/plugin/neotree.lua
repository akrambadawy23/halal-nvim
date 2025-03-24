
require("neo-tree").setup({
  filesystem = {
    -- hijack_netrw_behavior = "disabled", -- options: "open_default", "disabled", "enabled"
  },
})

vim.cmd([[autocmd BufEnter * if winnr('$') == 1 && &filetype == 'neo-tree' | quit | endif]])
