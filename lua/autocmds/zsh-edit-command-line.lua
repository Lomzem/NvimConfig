-- zsh edit-command-line widget
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "/tmp/zsh*zsh",
	callback = function()
		local cwd = vim.env.ZSH_EDIT_COMMAND_LINE_CWD
		if cwd and cwd ~= "" and vim.fn.isdirectory(cwd) == 1 then
			vim.cmd.lcd(vim.fn.fnameescape(cwd))
		end
		vim.opt_local.autowriteall = true
	end,
})
