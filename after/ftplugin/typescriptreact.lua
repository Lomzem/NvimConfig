require("lsp/snippets/html")
vim.cmd("setlocal tabstop=2")
vim.cmd("setlocal softtabstop=2")
vim.cmd("setlocal shiftwidth=2")

vim.keymap.set("n", "<leader>f", function()
	vim.cmd("TSToolsOrganizeImports")
	vim.cmd("Format")
end)
