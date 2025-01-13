return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
    event = "VeryLazy",
	opts = {
		auto_update = true,
		ensure_installed = {
			"clang-format",
			"clangd",
			"gopls",
			"lua-language-server",
			"prettier",
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
