vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*/kitty.conf",
	callback = function()
		local proc = io.popen("kill -USR1 $(pidof kitty)")
		if proc == nil then
			return
		end
		proc:close()
	end,
})
