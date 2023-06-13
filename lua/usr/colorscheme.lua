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
  inverse = true, -- invert background for search, diffs, statuslines and errors
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
        MatchParen = { fg = '#C70A80', bg = 'muted'},
	}
})
-- ================================================================
-- Night Owl

-- ================================================================
vim.o.background = "dark"
vim.cmd("colorscheme rose-pine")
