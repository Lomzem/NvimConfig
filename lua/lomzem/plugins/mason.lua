return {
	"williamboman/mason.nvim",
	config = function()
		require("lomzem.lsp.mason")
	end,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				auto_update = true,
				ensure_installed = {
					"clang-format",
					"clangd",
					"cmake",
					"cmakelang",
					"cpptools",
					"cssls",
					"emmet_language_server",
					"eslint",
					"gopls",
					"html",
					"jsonls",
					"lua_ls",
					"prettier",
					"pyright",
					"ruff",
					"rust_analyzer",
					"stylua",
					"tailwindcss",
					"texlab",
					"typst",
				},
			},
		},
	},
}
