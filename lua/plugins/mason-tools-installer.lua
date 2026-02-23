---@type LazySpec
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	cmd = {
		"MasonToolsClean",
		"MasonToolsInstall",
		"MasonToolsUpdate",
	},
	opts = {
		auto_update = true,
		ensure_installed = {
			"air",
			"clangd",
			"cmake",
			"gopls",
			"jsonls",
			"lua-language-server",
			"mdformat",
			"prettier",
			"pyright",
			"ruff",
			"rustywind",
			"stylua",
			"tailwindcss-language-server",
			"texlab",
			"tinymist",
			"tsgo",
			"typstyle",
			"yamlfmt",
			"tex-fmt",
		},
	},
}
