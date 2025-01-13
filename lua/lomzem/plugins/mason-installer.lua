return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
    event = "VeryLazy",
	opts = {
		auto_update = true,
		ensure_installed = {
			"clang-format",
			"clangd",
			"cpptools",
			"emmet-language-server",
			"eslint-lsp",
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
			"zls",
		},
	},
}
