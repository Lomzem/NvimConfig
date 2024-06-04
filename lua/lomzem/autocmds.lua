-- TYPST
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.typst",
	callback = function()
		-- local fn = vim.api.nvim_buf_get_name(0)
		-- local path, filename = string.match(fn, "(.+/).+/([a-zA-Z0-9-_]+).typst")
		-- local output_path = path .. filename .. ".pdf"
		-- local cmd = "silent exec '!typst compile % " .. output_path .. "'"
		-- vim.cmd(cmd)
		vim.cmd("silent exec '!typst compile %'")
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.typst",
	callback = function()
		vim.cmd("set filetype=typst")
		require("lomzem/lsp/snippets/typst")
		vim.cmd("Wrap")
		-- vim.cmd("CodeiumAuto")
	end,
})

-- CALC
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.qalc",
	callback = function()
		vim.cmd("set ft=qalc")
		require("lomzem/lsp/snippets/qalc")
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.txt",
	callback = function()
		vim.cmd("Wrap")
	end,
})
