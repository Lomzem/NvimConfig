vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.typst",
	callback = function()
		vim.cmd("silent !typst compile %")
	end,
})


require("lomzem")
