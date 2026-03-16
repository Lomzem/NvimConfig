---@type LazySpec
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	enabled = false,
	cmd = {
		"MasonToolsClean",
		"MasonToolsInstall",
		"MasonToolsUpdate",
	},
	opts = {
		auto_update = true,
		ensure_installed = {
			"clangd",
			"jsonls",
			"lua-language-server",
			"mdformat",
			"prettier",
			"pyright",
			"ruff",
			"stylua",
			"tailwindcss-language-server",
			"tex-fmt",
			"texlab",
			"tinymist",
			"tsgo",
			"typstyle",
			"rustywind",
			"yamlfmt",
		},
	},
}
