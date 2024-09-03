vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }

		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		-- vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
		vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
		vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
		vim.keymap.set("n", "<leader>mb", "<cmd>Telescope lsp_document_symbols<CR>", opts)

		vim.keymap.set("n", "<leader>di", "<cmd>Telescope diagnostics<CR>", opts)
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
		-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
		-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)

		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

		vim.keymap.set("n", "<leader>f", "<cmd>Format<CR>", opts)
	end,
})
