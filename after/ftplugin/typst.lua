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

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.typ",
	callback = function()
		local filename = vim.fn.expand("%:p")
		local basename = vim.fs.basename(filename)
		if vim.startswith(basename, "inc_") then
			-- Library file, don't compile/watch it
			return
		end
		vim.fn.jobstart({ "typst", "watch", filename })
	end,
})
