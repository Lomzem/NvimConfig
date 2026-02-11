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
			},
		},
		cmd = "Mason",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		-- event = "VeryLazy",
		opts = {},
		dependencies = "neovim/nvim-lspconfig",
	},
}
