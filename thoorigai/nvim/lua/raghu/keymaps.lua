vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Remove Hilight.'})

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })


vim.keymap.set("i", "<C-c>", "<Esc>", { desc ='Normal mode.'} )
vim.keymap.set("i", "jk", "<Esc>", { desc ='Normal mode.'} )
vim.keymap.set("i", "<C-e>", "<C-o>A", { desc ='Append at Insert mode.'} )

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc ='Location next.'} )
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc ='Location Prev'} )

vim.keymap.set("n", "<leader><leader>x", function()
    vim.cmd("source")
end, { desc ='Source '} )

vim.keymap.set("n", "<leader><leader>s", function()
    vim.cmd("source ~/.config/nvim/init.lua")
end)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move Selection Up.' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>h", "<cmd>bnext<CR>zz")
vim.keymap.set("n", "<leader>l", "<cmd>bprev<CR>zz")
-- Search and replace current selection
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Format the Markdown Tables
vim.keymap.set("n", "<leader>mf", "<cmd>%!column -t -s '|' -o '|' <CR>")
vim.keymap.set('n', '<leader>gl', 'f|l', { desc = 'Go to Left the column' })
vim.keymap.set('n', '<leader>gh', 'F|B', { desc = 'Go to Right the column' })
vim.keymap.set('n', '<leader>mc', 'dt|', { desc = 'Delete the column' })

-- Muggle to Wizzard
vim.keymap.set("n", "Q", "Yp:.!bash<CR>", { desc = 'Execute the line.' })
vim.keymap.set("x", "Q", "yo<ESC>p:.!bash<CR>gv", { desc = 'Execute the selection.' })
