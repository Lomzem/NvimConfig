-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

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
vim.opt.scrolloff = 8

-- fix scrolloff
-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
-- 	group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
-- 	callback = function()
-- 		local win_h = vim.api.nvim_win_get_height(0)
-- 		local off = math.min(vim.o.scrolloff, math.floor(win_h / 2))
-- 		local dist = vim.fn.line("$") - vim.fn.line(".")
-- 		local rem = vim.fn.line("w$") - vim.fn.line("w0") + 1
-- 		if dist < off and win_h - rem + dist < off then
-- 			local view = vim.fn.winsaveview()
-- 			view.topline = view.topline + off - (win_h - rem + dist)
-- 			vim.fn.winrestview(view)
-- 		end
-- 	end,
-- })

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

vim.opt.conceallevel = 2 -- for obsidian
