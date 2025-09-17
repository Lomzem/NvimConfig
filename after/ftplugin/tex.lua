require("lsp/snippets/tex")
vim.cmd("set spell")
vim.cmd("set wrap")
vim.cmd("set linebreak")

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.tex",
	callback = function()
		local file = vim.fn.expand("%:p")
		local cmd = string.format("pdflatex %s; latexmk -c", file)
		vim.fn.jobstart(cmd)
	end,
})
