require("lomzem/lsp/snippets/tex")
vim.cmd("set spell")
vim.cmd("set wrap")
vim.cmd("set linebreak")

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.tex",
	callback = function()
		vim.cmd("silent exec '!xelatex %; latexmk -c'")
	end,
})
