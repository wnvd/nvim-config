require('packer').startup(function(use)
    -- this is here so packer manages itself
    use('wbthomason/packer.nvim')
    -- colorschemes --
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'ellisonleao/gruvbox.nvim', as = 'gruvbox' })
    use("EdenEast/nightfox.nvim")
    --- colorbuddy & gruvbuddy ---
    -- use("tjdevries/colorbuddy.vim")
    -- use("tjdevries/gruvbuddy.nvim")
    -- telescope --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- telescope file browser --
    use {
        'nvim-telescope/telescope-file-browser.nvim',
        requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
    }
    -- nvim surround --
    use({
        'kylechui/nvim-surround',
        tag = '*', -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require('nvim-surround').setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    -- auto pairs ---
    use { 'windwp/nvim-autopairs' }
    -- auto tags ---
    use { 'windwp/nvim-ts-autotag' }
    -- tree-sitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    -- tree-sitter playground
    use('nvim-treesitter/playground')
    -- comments --
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- harpoon
    use('ThePrimeagen/harpoon')
    --- toggle term ---
    use { 'akinsho/toggleterm.nvim', tag = '*', config = function()
        require("toggleterm").setup()
    end }
    -- undotree
    use('mbbill/undotree')
    -- fugitive (havent thought of using it yet)
    use('tpope/vim-fugitive')

    -- LSP Setup --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-nvim-lua' }, -- Required

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' },
        }
    }
    -- Git signs --
    use { 'lewis6991/gitsigns.nvim' } -- do not use on nightly or dev build

    -- Zen mode
    use('folke/zen-mode.nvim')

    -- staline --
    use('tamton-aquib/staline.nvim')
end)
