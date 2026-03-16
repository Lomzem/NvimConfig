---@type LazySpec[]
return {
	{
		"mason-org/mason.nvim",
		enabled = false,
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
		"mason-org/mason-lspconfig.nvim",
		enabled = false,
		event = "VeryLazy",
		opts = {},
		dependencies = "neovim/nvim-lspconfig",
	},
}
