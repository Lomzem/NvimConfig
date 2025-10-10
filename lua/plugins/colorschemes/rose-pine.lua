---@type LazySpec
return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	---@module "rose-pine"
	---@type Options
	opts = {
		styles = {
			bold = false,
			italic = false,
		},
		disable_background = true,
		disable_float_background = true,
	},
}
