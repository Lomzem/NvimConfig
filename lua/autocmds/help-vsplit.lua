vim.api.nvim_create_autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})
