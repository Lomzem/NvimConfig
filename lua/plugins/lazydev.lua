---@type LazyPluginSpec
return {
	"folke/lazydev.nvim",
	ft = "lua",
	---@module "lazydev"
	---@type lazydev.Config
	opts = {
		library = {
			"nvim-dap-ui",
			"nvim-dap",
			"lazy.nvim",
			"LazyVim,",
		},
	},
}
