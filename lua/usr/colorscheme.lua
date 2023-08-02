-- local colorscheme = "carbonfox"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--
-- if not status_ok then
--     vim.notify("colorscheme " .. colorscheme .." not found!")
--     return
-- end

--- Theme Setups ---
-- ==============================================================
-- gruvbox setup--
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = false,
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = true,
    invert_intend_guides = false,
    inverse = true,    -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {
    },
    overrides = {
    },
    dim_inactive = false,
    transparent_mode = false,
})
-- ===================================================
-- Rose Pine --
require('rose-pine').setup({
    --- @usage 'auto'|'main'|'moon'|'dawn'
    variant = 'auto',
    --- @usage 'main'|'moon'|'dawn'
    dark_variant = 'moon',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = true,
    disable_italics = true,

    --- @usage string hex value or named color from rosepinetheme.com/palette
    groups = {
        background = '#000000',
        background_nc = '_experimental_nc',
        panel = 'surface',
        panel_nc = 'base',
        border = 'highlight_med',
        comment = 'muted',
        link = 'iris',
        punctuation = 'subtle',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',

        headings = {
            h1 = 'iris',
            h2 = 'foam',
            h3 = 'rose',
            h4 = 'gold',
            h5 = 'pine',
            h6 = 'foam',
        }
        -- or set all headings at once
        -- headings = 'subtle'
    },

    -- Change specific vim highlight groups
    -- https://github.com/rose-pine/neovim/wiki/Recipes
    highlight_groups = {
        ColorColumn = { bg = 'rose', blend = 10 },

        -- Blend colours against the "base" background
        CursorLine = { bg = 'foam', blend = 8 },
        StatusLine = { fg = 'love', bg = 'love', blend = 10 },
        MatchParen = { fg = '#C70A80', bg = 'muted' },
    }
})
-- ================================================================
--  nightfox.nvim
require('nightfox').setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = false,               -- Disable setting background
        terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,              -- Non focused panes set to alternative background
        module_default = true,             -- Default enable value for modules
        colorblind = {
            enable = false,                -- Enable colorblind support
            simulate_only = false,         -- Only show simulated colorblind colors and not diff shifted
            severity = {
                protan = 0,                -- Severity [0,1] for protan (red)
                deutan = 0,                -- Severity [0,1] for deutan (green)
                tritan = 0,                -- Severity [0,1] for tritan (blue)
            },
        },
        styles = {             -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
        },
        inverse = { -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
        },
        modules = { -- List of various plugins and additional options
            -- ...
        },
    },
    palettes = {},
    specs = {},
    groups = {},
})

-- ================================================================
vim.o.background = "dark"
vim.cmd("colorscheme rose-pine")
