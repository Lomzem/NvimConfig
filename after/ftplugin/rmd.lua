vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.Rmd",
	callback = function()
		local file_path = vim.fn.expand("%:p")
		local dir_path = vim.fs.dirname(file_path)
		vim.system({
			"Rscript",
			"-e",
			"rmarkdown::render('" .. file_path .. '\', output_format = "pdf_document", clean = TRUE)',
		}, {
			-- stdout = function(_, data)
			-- 	print(vim.inspect(data))
			-- end,
			-- stderr = function(_, data)
			-- 	print(vim.inspect(data))
			-- end,
			detach = true,
		})
	end,
})
