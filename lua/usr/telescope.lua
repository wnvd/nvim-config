local builtin = require('telescope.builtin')
-- for fuzzy find 
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- for git files 
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- for grep 
vim.keymap.set('n', '<leader>ps', function ()
    built.grep_string({ search = vim.fn.input("Grep > ") })
end)
