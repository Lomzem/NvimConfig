---@type LazySpec[]
return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		---@module "mason"
		---@type MasonSettings
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:MKindberg/ghostty-ls",
				"github:Freed-Wu/tmux-language-server",
			},
		},
		cmd = "Mason",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = "neovim/nvim-lspconfig",
	},
}
