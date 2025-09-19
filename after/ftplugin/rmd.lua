vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.Rmd",
	callback = function()
		local file_path = vim.fn.expand("%:p")
		local dir_path = vim.fs.dirname(file_path)
		vim.system({
			"Rscript",
			"-e",
			"rmarkdown::render('" .. file_path .. '\', output_format = "pdf_document")',
		}, {
			-- stdout = function(_, data)
			-- vim.notify(vim.inspect(err), vim.log.levels.ERROR)
			-- end,
			stderr = function(_, data)
				if data and vim.startswith(data, "Error:") then
					vim.notify(vim.inspect(data), vim.log.levels.ERROR)
				end
			end,
			detach = false,
		})
	end,
})
