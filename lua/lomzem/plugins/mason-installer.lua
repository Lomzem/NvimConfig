return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		auto_update = true,
		ensure_installed = {
			"clangd",
			"gopls",
			"lua-language-server",
			"prettier",
			"pyright",
			"ruff",
			"rust-analyzer",
			"stylua",
			"tailwindcss-language-server",
			"texlab",
			"tinymist", -- typst
			"typescript-language-server",
			"sql-formatter",
		},
	},
}
