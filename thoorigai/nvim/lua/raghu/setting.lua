-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- display
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.cursorlineopt = "line"
vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true
vim.opt.isfname:append("@-@")


-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }



-- Disable Showmode Mode moved to status line
vim.opt.showmode = false

vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- Scroll
vim.opt.scrolloff = 10

-- Decrease update time
vim.opt.updatetime = 50
vim.opt.timeoutlen = 300


-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Replace as you type
vim.opt.inccommand = 'split'

--Split
vim.opt.splitright = true
vim.opt.splitbelow = true

