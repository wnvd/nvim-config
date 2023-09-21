local gruvbox = {
    i = "#84a598",
    n = "#a89985",
    c = "#8fbf7f",
    v = "#fc802d",
}
require("staline").setup {
    sections = {
        left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
        mid = { 'file_name' },
        right = { ' ', 'line_column' }
    },
    mode_colors = gruvbox,
    defaults = {
        true_colors = true,
        line_column = " [%l/%L] :%c  ",
        branch_symbol = " "
    }
}
