return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		opts = {},
		cmd = "Mason",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = "neovim/nvim-lspconfig",
	},
}
