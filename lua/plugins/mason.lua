---@type LazySpec[]
return {
	{
		"mason-org/mason.nvim",
		build = ":MasonUpdate",
		---@module "mason"
		---@type MasonSettings
		opts = {
			registries = {
				"github:mason-org/mason-registry",
			},
		},
		cmd = "Mason",
	},
	{
		"mason-lspconfig.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = "neovim/nvim-lspconfig",
	},
}
