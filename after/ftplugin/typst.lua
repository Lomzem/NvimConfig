vim.cmd("set spell")
vim.cmd("set wrap")
vim.cmd("set linebreak")

vim.o.textwidth = 80

-- Automatically wrap lines when typing
vim.opt.formatoptions:append("t")
-- Auto-wrap comments and use comment leaders (like //)
-- vim.opt.formatoptions:append('c')
-- Auto-insert current comment leader when hitting Enter in insert mode
-- vim.opt.formatoptions:append('r')
-- Auto-insert current comment leader when hitting o/O in normal mode
-- vim.opt.formatoptions:append('o')

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.typ",
	callback = function()
		vim.cmd("silent !typst compile %")
	end,
})
