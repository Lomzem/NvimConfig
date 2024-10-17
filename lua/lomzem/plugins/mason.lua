return {
	"williamboman/mason.nvim",
	config = function()
		require("lomzem.lsp.mason")
	end,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			auto_update = true,
			ensure_installed = {
				"black",
				"clang-format",
				"cpptools",
				"clangd",
				"cssls",
				"emmet_language_server",
				"eslint",
				"gopls",
				"html",
				"jsonls",
				"lua_ls",
				"prettier",
				"pyright",
				"texlab",
				"rust_analyzer",
				"stylua",
			},
		},
	},
}
