---@type LazySpec
return {
	"neanias/everforest-nvim",
	priority = 1000,
	main = "everforest",
	---@module "everforest"
	---@type Everforest.Config
	opts = {
		background = "hard",
	},
}
