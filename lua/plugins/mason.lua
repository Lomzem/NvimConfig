return {
	{
		"williamboman/mason.nvim",
		lazy = true,
		build = ":MasonUpdate",
		opts = {},
		cmd = "Mason",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "BufWinEnter",
		opts = {},
		dependencies = "neovim/nvim-lspconfig",
	},
}
