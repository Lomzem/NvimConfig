vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("Move Help Window", { clear = true }),
	pattern = "help",
	command = "wincmd L",
})
