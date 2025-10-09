---@type LazySpec
return {
	"folke/tokyonight.nvim",
	---@module "tokyonight"
	---@type tokyonight.Config
	opts = {
		transparent = true,
		style = "night",
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
}
