vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Apparence
  use 'gbprod/nord.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Produtivity
  use { 'nvim-tree/nvim-tree.lua', tag = 'compat-nvim-0.8' }
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'mrjones2014/smart-splits.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { 
      {'nvim-lua/plenary.nvim'},
      { "nvim-telescope/telescope-live-grep-args.nvim" }
    }
  }
  use 'lewis6991/gitsigns.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'potamides/pantran.nvim'

  -- LSPs
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-buffer'

  use 'github/copilot.vim'
end)
