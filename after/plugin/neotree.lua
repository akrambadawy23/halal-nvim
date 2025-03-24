
require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "disabled", -- options: "open_default", "disabled", "enabled"
  },
})
