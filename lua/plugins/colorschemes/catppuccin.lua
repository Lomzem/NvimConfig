---@type LazySpec
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	---@module "catppuccin",
	---@type CatppuccinOptions
	opts = {
		flavour = "mocha",
		auto_integration = true,
	},
	-- opts = { transparent_background = true },
}
