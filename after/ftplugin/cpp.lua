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

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.cpp", "*.hpp", "*.h", "*.c", "*.cc" },
	callback = function()
		local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
		for lineno, line in ipairs(lines) do
			if lineno > 1 and line:match("int main%(") then
				if not lines[lineno - 1]:match("^$") then
					vim.api.nvim_buf_set_lines(0, lineno - 1, lineno - 1, false, { "" })
				end
			end
		end
	end,
})
