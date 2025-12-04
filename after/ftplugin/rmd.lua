local rmd_augroup = vim.api.nvim_create_augroup("RMarkdownRenderGroup", {
	clear = true,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.Rmd",
	group = rmd_augroup,
	callback = function()
		local file_path = vim.fn.expand("%:p")
		local dir_path = vim.fs.dirname(file_path)
		local cmd = {
			"Rscript",
			"-e",
			'rmarkdown::render("' .. file_path .. '", output_format = "pdf_document", clean = TRUE)',
		}
		vim.system(cmd, {
			detach = true,
		}, function(_)
			local files = vim.fs.find(function(name, path)
				return name:match(".+%.aux$") or name:match(".+%.log$")
			end, { limit = math.huge, type = "file" })
			for _, file in ipairs(files) do
				vim.fs.rm(file)
			end
		end)
	end,
})
