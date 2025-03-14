require("lsp/snippets/html")
vim.cmd("setlocal tabstop=2")
vim.cmd("setlocal softtabstop=2")
vim.cmd("setlocal shiftwidth=2")

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = false })
	vim.cmd("TSToolsOrganizeImports")
end)
