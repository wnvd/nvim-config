local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shortening function name 
local keymap = vim.api.nvim_set_keymap

-- (,) as global leader
vim.g.mapleader = " "

-- OLD
-- Maping Horizontal Explorer to (,e)
-- vim.keymap.set("n", "<leader>e", vim.cmd.Lex)

-- Normal Mode --
-- Mapping (,e) to Explorer
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts) 
-- Note: had problems during file cerations in :Lex 
-- so binding netrw, NO using both gives an error
-- think of "fe" as file explorer
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Better Window Navigation
--keymap("n", "<C-h>", "<C-w>h", opts)
--keymap("n", "<C-j>", "<C-w>j", opts)
--keymap("n", "<C-k>", "<C-w>k", opts)
--keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with Arrows
keymap("n", "<C-up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers 
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bnprevious<CR>", opts)

-- Visual --
-- Stay in indent mode 
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "p", '"_dp', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- Terminal --
-- Better terminal navigation
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

