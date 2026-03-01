vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.cpp", "*.hpp", "*.h", "*.c", "*.cc" },
	callback = function()
		local parent_dir = vim.fn.expand("%:p:h")
		local makefile_path = vim.fs.joinpath(parent_dir, "Makefile")
		if vim.uv.fs_stat(makefile_path) then
			vim.fn.jobstart("make", {
				detach = true,
			})
		end
	end,
})
