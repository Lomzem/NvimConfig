-- return {}

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		auto_update = true,
		ensure_installed = {
            "bacon",
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
