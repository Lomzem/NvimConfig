vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("Reload Kitty Config", { clear = true }),
	pattern = "*/kitty.conf",
	callback = function()
		local proc = io.popen("kill -USR1 $(pidof kitty)")
		if proc == nil then
			return
		end
		proc:close()
	end,
})
