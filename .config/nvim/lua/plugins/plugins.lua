vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Apparence
    use 'gbprod/nord.nvim'
    -- use 'tribela/vim-transparent' 
    -- use 'craftzdog/solarized-osaka.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            opt = true
        }
    }
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'lukas-reineke/indent-blankline.nvim'

    -- Produtivity
    use {
        'nvim-tree/nvim-tree.lua',
        tag = 'compat-nvim-0.7'
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use 'mrjones2014/smart-splits.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        requires = {{'nvim-lua/plenary.nvim'}, {"nvim-telescope/telescope-live-grep-args.nvim"}}
    }
    use 'lewis6991/gitsigns.nvim'
    use 'windwp/nvim-ts-autotag'
    use 'potamides/pantran.nvim'
    use {
        'akinsho/toggleterm.nvim',
        tag = 'v2.*'
    }
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {{"nvim-lua/plenary.nvim"}, {"nvim-treesitter/nvim-treesitter"}}
    }
    use 'gsuuon/note.nvim'
    use 'wakatime/vim-wakatime'
    use {
        "johmsalas/text-case.nvim",
        config = function()
            require('textcase').setup {}
        end
    }
    use 'm4xshen/autoclose.nvim'

    -- LSPs
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use "MunifTanjim/prettier.nvim"
    use 'MunifTanjim/eslint.nvim'
    use({
        "elixir-tools/elixir-tools.nvim",
        tag = "stable",
        requires = {"nvim-lua/plenary.nvim"}
    })

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind.nvim'
    use 'hrsh7th/cmp-buffer'

    use 'github/copilot.vim'
end)
