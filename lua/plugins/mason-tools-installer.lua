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
			"clangd",
			"jsonls",
			"lua-language-server",
			"mdformat",
			"prettier",
			"pyright",
			"ruff",
			"stylua",
			"texlab",
			"tinymist",
			"tsgo",
			"typstyle",
			"yamlfmt",
			"tex-fmt",
		},
	},
}
