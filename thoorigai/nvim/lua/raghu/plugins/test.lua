return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "marilari88/neotest-vitest",
            "nvim-neotest/neotest-plenary",
            "fredrikaverpil/neotest-golang", -- Installation
            dependencies = {
                "leoluz/nvim-dap-go",
                opts = {},
            },
        },
        config = function()
            local neotest = require('neotest')
            neotest.setup({
                adapters = {
                    require("neotest-golang"), -- Registration
                    require("neotest-vitest"),
                    require("neotest-plenary")
                },
            })

            vim.keymap.set("n", "<leader>tr", function()
                neotest.run.run()
            end, { desc = 'Run Test.' })
            vim.keymap.set("n", "<leader>to", function()
                neotest.output.open()
            end, { desc = 'Toggle Test Ouput.' })
            vim.keymap.set("n", "<leader>tp", function()
                neotest.output_panel.toggle()
            end, { desc = 'Toggle Test Ouput.' })
            vim.keymap.set("n", "<leader>ts", function()
                neotest.run.summary.toggle()
            end, { desc = 'Toggle Test Run Summary.' })

            vim.keymap.set("n", "<leader>tf", function()
                neotest.run.run(vim.fn.expand("%"))
            end, { desc = 'Run Test Near By.' })

            vim.keymap.set("n", "<leader>td", function()
                neotest.run.run({ suite = false, strategy = "dap" })
                --neotest.run.run({vim.fn.expand("%"), strategy = "dap"})
            end, { desc = 'Debug Test.' })

            vim.keymap.set("n", "[n", function()
                neotest.jump.prev({ status = "failed" })
            end, { desc = 'Previous Test Failure.' })

            vim.keymap.set("n", "]n", function()
                neotest.jump.next({ status = "failed" })
            end, { desc = 'Next Test Failure.' })
        end,
    },
}
