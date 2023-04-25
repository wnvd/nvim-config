local options = {
	
    fileencoding = "utf-8",
	termguicolors = true,

	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,

	number = true,
    cursorline = true,
	relativenumber = true,
	guifont = "monospace:h17",
	-- get rid of all multiple status lines
    laststatus = 3,

}

for k, v in pairs(options) do
	vim.opt[k] = v
end 

-- used with laststatus = 3
vim.cmd[["highlight WinSeparator guibg=None"]]
