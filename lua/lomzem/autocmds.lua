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
