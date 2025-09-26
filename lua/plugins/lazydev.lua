---@type LazyPluginSpec
return {
	"folke/lazydev.nvim",
	ft = "lua",
	opts = {
		library = {
			"nvim-dap-ui",
			"nvim-dap",
			"lazy.nvim",
			"LazyVim,",
		},
	},
}
