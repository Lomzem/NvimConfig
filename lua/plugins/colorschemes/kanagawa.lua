---@type LazySpec
return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	---@module "kanagawa"
	---@type KanagawaConfig
	opts = {
		undercurl = false,
		transparent = true,
	},
}
