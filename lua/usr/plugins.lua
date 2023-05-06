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
    -- tree-sitter 
    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    -- tree-sitter playground
    use ('nvim-treesitter/playground')
end)
