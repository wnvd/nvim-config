require("packer").startup(function(use)
    -- this is here so packer manages itself
    use ("wbthomason/packer.nvim")
    -- colorschemes --
--    use "lunarvim/colorschemes"
    use "EdenEast/nightfox.nvim"
    -- telescope --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- auto pairs ---
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- tree-sitter 
    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    -- tree-sitter playground
    use ('nvim-treesitter/playground')

    -- harpoon
    use ('ThePrimeagen/harpoon')

    -- undotree 
    use ('mbbill/undotree')
    -- fugitive (havent thought of using it yet)
    use ('tpope/vim-fugitive')

    -- LSP Setup --
    use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-buffer'},  
            {'hrsh7th/cmp-path'},     
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-nvim-lua'}, -- Required

            -- Snippets
            {'L3MON4D3/LuaSnip'},     -- Required
            {'rafamadriz/friendly-snippets'},
        }
    }
 
    -- Zen mode
    use("folke/zen-mode.nvim")

end)
