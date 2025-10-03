vim.keymap.set("n", "<leader>ru", ":w<CR>:term dart run %<CR>")

vim.api.nvim_create_autocmd("BufWrite", {
	pattern = "*.dart",
	callback = function()
		local pid_file_exists = vim.uv.fs_stat("/tmp/flutter-lomzem.pid")
		if not pid_file_exists then
			vim.notify("flutter pid file does not exist", vim.log.levels.ERROR)
			return
		end
		local file = io.open("/tmp/flutter-lomzem.pid", "r")
		if not file then
			vim.notify("Failed to open flutter pid file", vim.log.levels.ERROR)
			return
		end
		local pid = file:read("*a")
		file:close()
		vim.fn.jobstart({
			"kill",
			"-s",
			"USR1",
			pid,
		})
	end,
})
