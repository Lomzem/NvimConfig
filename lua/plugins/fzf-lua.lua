return {
	"ibhagwan/fzf-lua",
	lazy = true,
	opts = {
		fzf_opts = {
			["--select-1"] = true,
		},
	},
	cmd = "FzfLua",
	keys = {
		{ "<C-p>", "<cmd>FzfLua files<cr>" },
		{ "<leader>ps", "<cmd>FzfLua live_grep<cr>" },
		{ "gD", "<cmd>FzfLua lsp_declarations<cr>" },
		{ "gd", "<cmd>FzfLua lsp_definitions<cr>" },
		{ "gi", "<cmd>FzfLua lsp_implementations<cr>" },
		{ "gm", "<cmd>FzfLua lsp_document_symbols<cr>" },
		{ "gM", "<cmd>FzfLua lsp_workspace_symbols<cr>" },
		{ "gt", "<cmd>FzfLua lsp_typedefs<cr>" },
		{ "gr", "<cmd>FzfLua lsp_references<cr>" },
		{ "U", "<cmd>FzfLua lsp_code_actions<cr>" },
	},
}
