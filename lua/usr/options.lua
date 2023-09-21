local options = {

    -- Took from tjdevries
    -- Cool floating window popup menu for completion on command line
    pumblend = 17,
    -- wildmode = "longest:full", -- this one disables tab for some reason
    wildoptions = "pum",

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
    hlsearch = true,
    incsearch = true,

    scrolloff = 10,
    signcolumn = "yes",

    -- faster update
    updatetime = 50,

    -- colorcolumn = "90",

    showmatch = true,

}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- used with laststatus = 3
vim.cmd [["highlight WinSeparator guibg=None"]]
