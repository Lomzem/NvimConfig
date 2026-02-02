vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.l",
	callback = function()
		local filename = vim.fn.expand("%:p")
		local dirname = vim.fn.expand("%:h")
		local lex_file = vim.fs.joinpath(dirname, "lex.yy.c")
		vim.fn.jobstart({
			"flex",
			filename,
		}, {
			on_exit = function()
				vim.fn.jobstart({
					"gcc",
					lex_file,
					"-lfl",
					"-o",
					"foo",
				}, {
					on_stderr = function(_, data)
						if data then
							vim.notify(table.concat(data, "\n"))
						end
					end,
				})
			end,
		})
	end,
})
