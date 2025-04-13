
vim.api.nvim_create_user_command("Ex", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, {})
--require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
--[[require("neo-tree").setup({
  filesystem = {
    -- hijack_netrw_behavior = "disabled", -- options: "open_default", "disabled", "enabled"
  },
})
]]
vim.cmd([[autocmd BufEnter * if winnr('$') == 1 && &filetype == 'neo-tree' | quit | endif]])
