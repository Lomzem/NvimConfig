---@type LazySpec
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	-- event = "VeryLazy",
	config = function()
		local mason_tools_installer = require("mason-tool-installer")
		mason_tools_installer.setup({
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
		})
		mason_tools_installer.clean()
		mason_tools_installer.check_install(true, false)
	end,
}
