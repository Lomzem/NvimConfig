vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.Rmd",
	callback = function()
		local file_path = vim.fn.expand("%:p")
		vim.system({ "Rscript", "-e", "rmarkdown::render('" .. file_path .. "')" }, {
			-- stdout = function(_, data)
			-- 	print(vim.inspect(data))
			-- end,
			-- stderr = function(_, data)
			-- 	print(vim.inspect(data))
			-- end,
			-- detach = true,
		})
	end,
})
