-- zsh edit-command-line widget
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "/tmp/zsh*zsh",
	callback = function()
		vim.opt_local.autowriteall = true
	end,
})
