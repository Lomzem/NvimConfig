---@type LazySpec
return {
	"RedsXDD/neopywal.nvim",
	priority = 1000,
	---@module "neopywal"
	---@type NeopywalOptions
	---@diagnostic disable-next-line: missing-fields
	opts = {
		transparent_background = true,
		custom_highlights = {
			LineNr = { fg = "dimmed" },
		},
		no_italic = true,
		use_palette = {
			dark = "wallust",
			light = "wallust",
		},
		plugins = {
			rainbow = true,
		},
	},
}
