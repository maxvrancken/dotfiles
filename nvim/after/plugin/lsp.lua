local lsp = require('lsp-zero').preset({})


lsp.on_attach(function(client, bufnr)
    -- 	lsp.default_keymaps({buffer = bufnr})
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostics.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostics.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostics.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
end)

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'jsonls',
  'yamlls',
  'tsserver',
  'eslint',
  'html',
  'cssls',
  'rust_analyzer',
  'golangci_lint_ls'
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

vim.lsp.set_log_level("debug")

lsp.setup()
