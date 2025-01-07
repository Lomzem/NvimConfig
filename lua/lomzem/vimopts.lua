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
-- vim.opt.scrolloff = 8
vim.opt.scrolloff = 999

-- appearance
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.guicursor = ""
vim.cmd("syntax off")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- misc
vim.opt.swapfile = false
vim.api.nvim_create_user_command("Wrap", "lua vim.cmd([[set wrap | set linebreak | set spell]])", {})
vim.opt.undofile = true

-- vim.opt.conceallevel = 2 -- for obsidian
