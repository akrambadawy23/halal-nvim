-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
--

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
 use 'wbthomason/packer.nvim'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpfate'})
use { "catppuccin/nvim", as = "catppuccin" }
use('nvim-treesitter/playground')
use('theprimeagen/harpoon') -- lowkey heat
use('mbbill/undotree')
use('tpope/vim-fugitive')

 use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/nvim-cmp')
use({
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  }
})
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}
use {
'ThePrimeagen/vim-be-good'
}
use { 'junegunn/fzf', run = ":call fzf#install()" }
use { 'junegunn/fzf.vim' }
  end)

