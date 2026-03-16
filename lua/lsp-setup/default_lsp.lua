vim.lsp.config("*", {
	capabilities = require("lua.lsp.capabilities"),
	root_markers = { ".git" },
})
