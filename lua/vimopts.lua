-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars = { eob = " " }

-- tabs and indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- line wrapping
vim.opt.wrap = false

-- appearance
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.o.syntax = "on"
vim.opt.signcolumn = "yes"

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- misc
vim.opt.swapfile = false
vim.opt.spell = false
vim.opt.undofile = true
