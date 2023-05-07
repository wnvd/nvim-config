local options = {
	
    fileencoding = "utf-8",
	termguicolors = true,

	expandtab = true,
    softtabstop = 4,
	shiftwidth = 4,
	tabstop = 4,

    smartindent = true,

    cursorline = true,

	number = true,
	relativenumber = true,
	guifont = "monospace:h17",
	-- get rid of all multiple status lines
    laststatus = 3,

    -- search and highlight
    hlsearch = false,
    incsearch = true,

    scrolloff = 8,
    signcolumn = "yes",

    -- faster update
    updatetime = 50,

    colorcolumn = "80",

}

for k, v in pairs(options) do
	vim.opt[k] = v
end 

-- used with laststatus = 3
vim.cmd[["highlight WinSeparator guibg=None"]]

