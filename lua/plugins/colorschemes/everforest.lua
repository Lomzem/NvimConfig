---@type LazySpec
return {
	"neanias/everforest-nvim",
	lazy = false,
	priority = 1000,
	main = "everforest",
	---@module "everforest"
	---@type Everforest.Config
	opts = {
		background = "hard",
	},
}
