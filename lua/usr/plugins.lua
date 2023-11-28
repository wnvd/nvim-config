require('packer').startup(function(use)
    -- this is here so packer manages itself
    use('wbthomason/packer.nvim')
    -- colorschemes --
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'ellisonleao/gruvbox.nvim', as = 'gruvbox' })
    use("EdenEast/nightfox.nvim")
    use 'Mofiqul/vscode.nvim'
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
    })
    -- auto pairs ---
    use { 'windwp/nvim-autopairs' }
    -- auto tags ---
    use { 'windwp/nvim-ts-autotag' }
    use {
        'lukas-reineke/indent-blankline.nvim',
        -- you didn't like the changes in v3
        commit = '9637670896',
    }
    -- tree-sitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    -- tree-sitter playground
    use('nvim-treesitter/playground')
    -- comments --
    use('numToStr/Comment.nvim')
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
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    -- Git signs --
    use { 'lewis6991/gitsigns.nvim' } -- do not use on nightly or dev build
    -- nvim-Colorizer --
    use('norcalli/nvim-colorizer.lua')
    -- Zen mode --
    use('folke/zen-mode.nvim')
    -- fidget --
    use { 'j-hui/fidget.nvim', config = function()
        require('fidget').setup({})
    end }
    -- staline --
    use('tamton-aquib/staline.nvim')
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', {
    clear
    = true
})
vim.api.nvim_create_autocmd('BufWritePost', {
    command = 'source <afile> | PackerCompile',
    group = packer_group,
    pattern = vim.fn.expand '$MYVIMRC',
})
