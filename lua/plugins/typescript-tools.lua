return {
	"pmizio/typescript-tools.nvim",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		settings = {
			tsserver_file_preferences = {
				includeInlayVariableTypeHints = "true",
				includeInlayParameterNameHints = "all",
				includeCompletionsForModuleExports = true,
			},
		},
	},
	ft = {
		"typescript",
		"typescriptreact",
		"javascript",
	},
}
