return {

    'akinsho/toggleterm.nvim',
    version = "*",

    config = function()
        local toggleterm = require("toggleterm")
        toggleterm.setup()
        local opt = {
            buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
            silent = true,  -- use `silent` when creating keymaps
            noremap = true, -- use `noremap` when creating keymaps
            nowait = true,  -- use `nowait` when creating keymaps
        }

        vim.keymap.set('n', '<leader>tn', "<cmd>ToggleTerm direction=float name=term<cr>", opt,
            { desc = "Open Float Terminal" })
        vim.keymap.set('n', '<leader>th', "<cmd>ToggleTerm direction=horizontal name=termh<cr>", opt,
            { desc = "Open horizontal Terminal" })
        vim.keymap.set('n', '<leader>tv', "<cmd>ToggleTerm size=90 direction=vertical name=terml<cr>", opt,
            { desc = "Open Vertical Terminal" })
        vim.keymap.set('x', '<leader>x', "<cmd>ToggleTermSendVisualLines<cr>", opt,
            { desc = "Execute Selected lines at Terminal" })
        vim.keymap.set('n', '<leader>x', "<cmd>ToggleTermSendCurrentLine<cr>", opt,
            { desc = "Execute at Terminal" })

        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
            vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
            vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
            vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end,
}
