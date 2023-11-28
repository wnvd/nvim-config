-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
local folder = " "
require("telescope").setup {
    -- defaults = {
    --     prompt_prefix = "  " .. search .. "  ",
    --     selection_caret = carret,
    --     entry_prefix = "   ",
    -- },
    extensions = {
        file_browser = {
            theme = "dropdown", -- dropdown, ivy
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            dir_icon = folder,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
        },
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    ":Telescope file_browser<CR>",
    { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
)
