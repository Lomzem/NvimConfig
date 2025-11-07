---@type LazySpec
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	event = "VeryLazy",
	config = function()
		local mason_tools_installer = require("mason-tool-installer")
		mason_tools_installer.setup({
			auto_update = true,
			ensure_installed = {
				"air",
				"basedpyright",
				"clangd",
				"fish_lsp",
				"ghostty-ls",
				"glsl_analyzer",
				"gopls",
				"hyprls",
				"jsonls",
				"lua-language-server",
				"markdown_oxide",
				"prettier",
				"ruff",
				"rust-analyzer",
				"rustywind",
				"sql-formatter",
				"stylua",
				"svelte-language-server",
				"tailwindcss-language-server",
				"texlab",
				"tinymist",
				"typstyle",
				"yamlfmt",
				"nixpkgs-fmt",
			},
		})
		mason_tools_installer.clean()
		mason_tools_installer.check_install(true, false)
	end,
}
