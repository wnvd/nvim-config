local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({
    'gopls',
})

--- disabled for now to see default bindings
local cmp = require('cmp')
local cmp_select = { behaviour = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

----------------------
-- some config here --
----------------------

-- Remaps only when inside buffer (which is file you are editing)
lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    -- "K": displays hover information about the symbol under the cursor
    -- in a floating window.
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    -- "gd": jumps to the definition of the symbol under the cursor
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    -- "gD": jumps to the declaration of the symbol under the cursor in the
    -- quickfix window(many servers do not implement this method).
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    -- "gi": List all the implementation for the symbol under the cursor in the
    -- quickfix window.
    vim.keymap.set("n", "gi", function() vim.lsp.buff.implementation() end, opts)
    -- "go": jumps to the defination of the type of the symbol under the cursor.
    vim.keymap.set("n", "go", function() vim.lsp.buff.type_definition() end, opts)
    -- "gr": list all the references to the symbol under the cursor
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    -- "gs": displays signature info about the symbol under the cursor in a
    -- floating window.
    vim.keymap.set("n", "gs", function() vim.lsp.buf.signature_help() end, opts)
    -- "<F2>": rename all the references under the cursor
    vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
    -- "<F3>": format code in the current buffer
    vim.keymap.set("n", "<F3>", function() vim.lsp.buf.format() end, opts)
    -- "<F4>": show all the code actions for symbol under the cursor
    vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, opts)
    -- "gl": show the diagnostic in a floating window
    vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, opts)
    -- "[d": move to the previous diagnostic current buffer
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    -- "]d": move to the next diagnostic current buffer
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    -- "<leader>vws": dont know what it does
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
