vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*/ghostty/config",
	callback = function()
		vim.opt.commentstring = "# %s"
		vim.api.nvim_set_option_value("filetype", "ghostty", { buf = 0 })
	end,
})
