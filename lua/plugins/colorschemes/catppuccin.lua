---@type LazySpec
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	---@module "catppuccin",
	---@type CatppuccinOptions
	opts = {
		-- flavour = "macchiato",
		auto_integration = true,
		transparent_background = true,
		float = {
			transparent = true,
		},
	},
}
