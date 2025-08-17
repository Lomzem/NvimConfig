vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*/ghostty/config",
	callback = function()
		vim.opt.commentstring = "# %s"
	end,
})
