vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.Rmd",
	callback = function()
		local file_path = vim.fn.expand("%:p")
		local cmd = {
			"Rscript",
			"-e",
			"rmarkdown::render('" .. file_path .. "')",
		}
		vim.fn.jobstart(cmd)
	end,
})
