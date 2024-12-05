vim.cmd("set spell")
vim.cmd("set wrap")
vim.cmd("set linebreak")

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.typ",
	callback = function()
		vim.cmd("silent !typst compile %")
	end,
})

