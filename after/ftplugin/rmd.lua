vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.Rmd",
	callback = function()
		local file_path = vim.fn.expand("%:p")
		local cmd = {
			"Rscript",
			"-e",
			"rmarkdown::render('" .. file_path .. "')",
		}
		vim.fn.jobstart(cmd, {
			-- on_exit = function(job_id, exit_code, event)
			-- if exit_code == 0 then
			-- 	vim.notify("Rmd compilation finished successfully.", vim.log.levels.INFO, {})
			-- else
			-- 	vim.notify("Rmd compilation failed with exit code: " .. exit_code, vim.log.levels.ERROR, {})
			-- end
			-- end,
		})
	end,
})
