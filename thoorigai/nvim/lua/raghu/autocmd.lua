-- LSP Key mappings
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local lsp_group = augroup('LspAuto', {})
autocmd('LspAttach', {
    group = lsp_group,
    callback = function(e)
        local opts = { buffer = e.buf }
        opts.desc = 'Goto Definiation.'
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        opts.desc = 'Hover.'
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        opts.desc = 'Workspace Sympol'
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        opts.desc = 'Float diagnostics.'
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        opts.desc = 'Code action.'
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        opts.desc = 'Reference Sympol'
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        opts.desc = 'Rename Sympol.'
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        opts.desc = 'Signature help.'
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        opts.desc = 'Goto next diagnostics.'
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        opts.desc = 'Goto previouse diagnostics.'
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 400,
        })
    end,
})


